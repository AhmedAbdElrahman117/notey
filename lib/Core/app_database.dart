import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

abstract class AppDatabase {
  static late Database _database;
  final String tableName;

  AppDatabase({required this.tableName});

  static Future<void> init() async {
    var databasesPath = await getApplicationDocumentsDirectory();
    String path = p.join(databasesPath.path, 'notes.db');
    _database = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
      CREATE TABLE notes (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        title TEXT,
        content TEXT,
        category TEXT,
        createdAt TEXT,
        syncStatus TEXT,
        isModified TEXT,
        isDeleted TEXT,
        backgroundColor INTEGER,
        backgroundPath TEXT,
        images TEXT,
        isFavourite TEXT
      )
    ''');

        await db.execute('''
      CREATE TABLE category (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        syncStatus TEXT,
        isModified TEXT,
        isDeleted TEXT,
        createdAt TEXT
      )
    ''');
      },
    );
  }

  Future<int> insert(Map<String, dynamic> data) async {
    return await _database.insert(tableName, data);
  }

  Future<int> insertAll(
    List<Map<String, dynamic>> data,
  ) async {
    var batch = _database.batch();
    for (var item in data) {
      batch.insert(tableName, item);
    }
    await batch.commit(noResult: true);
    return data.length;
  }

  Future<List<Map<String, dynamic>>> get({
    String? query,
    String? column = 'createdAt',
    String? order = "DESC",
    String? where,
    List<Object?>? whereArgs,
    List<String>? columns,
  }) async {
    return await _database.query(
      query ?? tableName,
      columns: columns,
      orderBy: '$column $order',
      where: where != null ? '($where) AND isDeleted = ?' : 'isDeleted = ?',
      whereArgs: [
        if (whereArgs != null) ...whereArgs,
        'false',
      ],
    );
  }

  Future<int> update(Map<String, dynamic> data) async {
    return await _database.update(
      tableName,
      data,
      where: 'id = ?',
      whereArgs: [
        data['id'],
      ],
    );
  }

  Future<int> updateAll(List<Map<String, dynamic>> data) async {
    var batch = _database.batch();

    data.map(
      (e) => batch.update(tableName, e),
    );

    var res = await batch.commit();

    return res.length;
  }

  Future<int> delete(int id) async {
    return await _database.delete(
      tableName,
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<int> deleteAll(List<int> ids) async {
    return await _database.delete(
      tableName,
      where: 'id IN (${List.filled(ids.length, '?').join(',')})',
      whereArgs: [ids],
    );
  }

  Future<int> count() async {
    var x = await _database.rawQuery('SELECT COUNT(*) FROM $tableName');
    return Sqflite.firstIntValue(x) ?? -1;
  }

  Future<int> clearDB() async {
    return await _database.delete(tableName);
  }

  Future<void> close() async {
    await _database.close();
  }
}

import 'package:notey/Core/app_database.dart';

class NoteDB extends AppDatabase {
  NoteDB._internal() : super(tableName: 'notes');

  static final NoteDB instance = NoteDB._internal();

  factory NoteDB() => instance;
}

import 'package:notey/Core/category_db.dart';
import 'package:notey/Core/local_preferences.dart';
import 'package:notey/Features/Category/Model/category_model.dart';
import 'package:notey/Features/Home/Dialogs/note_filter_sheet.dart';

class CategoryService {
  final CategoryDB categoryDB = CategoryDB();

  Future<List<Map<String, dynamic>>> getCategories({
    String? query,
    String? where,
    List<String>? columns,
    List<Object?>? whereArgs,
  }) async {
    String column =
        LocalPreferences.instance.getString("category_filter") ?? 'createdAt';
    String order =
        LocalPreferences.instance.getString("category_ascending") ?? "DESC";

    var get = await categoryDB.get(
      query: query,
      column: column,
      columns: columns,
      order: order,
      where: where,
      whereArgs: whereArgs,
    );

    return get;
  }

  Future<int> addCategory(Map<String, dynamic> category) async {
    return await categoryDB.insert(category);
  }

  Future<int> addAllCategories(List<Map<String, dynamic>> categories) async {
    return await categoryDB.insertAll(categories);
  }

  Future<int> updateCategory(Map<String, dynamic> category) async {
    return await categoryDB.update(category);
  }

  Future<int> updateAllCategories(
    List<Map<String, dynamic>> categories,
  ) async {
    return await categoryDB.updateAll(categories);
  }

  Future<int> deleteCategory(int id) async {
    return await categoryDB.delete(id);
  }

  Future<int> deleteAllCategories(List<int> ids) async {
    return await categoryDB.deleteAll(ids);
  }

  Future<List<CategoryModel>> order(
    Filter filter,
    bool asc,
    List<CategoryModel> categories,
  ) async {
    await saveOrder(filter, asc);
    if (filter == Filter.createdAt) {
      categories.sort((a, b) => a.createdAt!.compareTo(b.createdAt!));
    } else if (filter == Filter.title) {
      categories.sort(
        (a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()),
      );
    }
    if (!asc) {
      categories = categories.reversed.toList();
    }
    return categories;
  }

  Future<void> saveOrder(Filter filter, bool asc) async {
    await LocalPreferences.instance.setString('category_filter', filter.name);
    await LocalPreferences.instance.setString(
      'category_ascending',
      asc ? 'asc' : 'desc',
    );
  }
}

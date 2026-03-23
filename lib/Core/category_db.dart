import 'package:notey/Core/app_database.dart';

class CategoryDB extends AppDatabase {
  CategoryDB._internal() : super(tableName: 'category');

  static final CategoryDB instance = CategoryDB._internal();

  factory CategoryDB() => instance;
}

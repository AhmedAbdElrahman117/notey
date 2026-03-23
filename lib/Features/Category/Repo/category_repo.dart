import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:notey/Core/app_colors.dart';
import 'package:notey/Core/app_exception.dart';
import 'package:notey/Core/local_preferences.dart';
import 'package:notey/Features/Category/Model/category_model.dart';
import 'package:notey/Features/Category/Services/category_service.dart';
import 'package:notey/Features/Home/Dialogs/note_filter_sheet.dart';
import 'package:notey/Features/Home/Repo/background_repo.dart';
import 'package:sqflite/sqflite.dart';

class CategoryRepo {
  CategoryRepo._();

  static final CategoryRepo instance = CategoryRepo._();

  factory CategoryRepo() => instance;

  final StreamController<List<CategoryModel>> categoryStreamController =
      StreamController.broadcast();

  Stream<List<CategoryModel>> get categoryStream =>
      categoryStreamController.stream;

  List<CategoryModel> _cache = [];

  final CategoryService _categoryService = CategoryService();

  final BackgroundRepo _backgroundRepo = BackgroundRepo();

  final AppColors _appColors = AppColors();

  bool isColorsSelected = false;

  final List<Color> _selectedColors = [];
  int cacheCount = 0;

  List<Color> generateNoteColors(int count) {
    _selectedColors.clear();
    for (int i = 0; i < count; i++) {
      _selectedColors.add(_appColors.getRandomColor());
    }
    return _selectedColors;
  }

  Future<Either<AppException, Unit>> getCategories() async {
    try {
      var req = await _categoryService.getCategories();

      if (req.length != cacheCount) {
        generateNoteColors(req.length);
        cacheCount = req.length;
      }

      _cache = req.indexed.map((e) {
        return CategoryModel.fromMap(e.$2)..cardColor = _selectedColors[e.$1];
      }).toList();

      categoryStreamController.add(List.from(_cache));

      return right(unit);
    } on DatabaseException catch (e) {
      return left(LocalDatabaseException(dbException: e));
    } catch (e) {
      return left(UnknownException(message: e.toString()));
    }
  }

  Future<Either<AppException, int>> addCategory(CategoryModel category) async {
    try {
      var id = await _categoryService.addCategory(category.toMap());

      await _backgroundRepo.registerBackgroundTask('addCategory');

      var data = convert(await _categoryService.getCategories());

      updateStream(data);

      return right(id);
    } on DatabaseException catch (e) {
      return left(LocalDatabaseException(dbException: e));
    } catch (e) {
      return left(UnknownException(message: e.toString()));
    }
  }

  Future<Either<AppException, int>> updateCategory(
    CategoryModel category,
  ) async {
    try {
      var res = await _categoryService.updateCategory(category.toMap());

      await _backgroundRepo.registerBackgroundTask('updateCategory');

      var data = convert(await _categoryService.getCategories());

      updateStream(data);

      return right(res);
    } on DatabaseException catch (e) {
      return left(LocalDatabaseException(dbException: e));
    } catch (e) {
      return left(UnknownException(message: e.toString()));
    }
  }

  Future<Either<AppException, int>> deleteCategory(int id) async {
    try {
      var res = await _categoryService.deleteCategory(id);

      await _backgroundRepo.registerBackgroundTask('deleteCategory');

      var data = convert(await _categoryService.getCategories());

      updateStream(data);

      return right(res);
    } on DatabaseException catch (e) {
      return left(LocalDatabaseException(dbException: e));
    } catch (e) {
      return left(UnknownException(message: e.toString()));
    }
  }

  Future<Either<AppException, List<CategoryModel>>> order({
    required Filter filter,
    required bool asc,
    required List<CategoryModel> categories,
  }) async {
    try {
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

      await saveOrder(filter, asc);
      return right(categories);
    } catch (e) {
      return left(UnknownException(message: e.toString()));
    }
  }

  Future<Either<AppException, Unit>> saveOrder(Filter filter, bool asc) async {
    try {
      await LocalPreferences.instance.setString('category_filter', filter.name);
      await LocalPreferences.instance.setString(
        'category_ascending',
        asc ? 'asc' : 'desc',
      );
      return right(unit);
    } catch (e) {
      return left(UnknownException(message: e.toString()));
    }
  }

  List<CategoryModel> convert(List<Map<String, dynamic>> maps) {
    return maps.map((map) => CategoryModel.fromMap(map)).toList();
  }

  void updateStream(List<CategoryModel> notes) {
    categoryStreamController.add(List.from(notes));
  }
}

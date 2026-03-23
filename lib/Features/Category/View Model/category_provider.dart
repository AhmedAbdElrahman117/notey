import 'dart:async';

import 'package:flutter/material.dart';
import 'package:notey/Core/local_preferences.dart';
import 'package:notey/Core/toast.dart';
import 'package:notey/Features/Category/Model/category_model.dart';
import 'package:notey/Features/Category/Repo/category_repo.dart';
import 'package:notey/generated/l10n.dart';

class CategoryProvider extends ChangeNotifier {
  List<CategoryModel> categories = [];

  StreamSubscription? subscription;

  CategoryProvider() {
    getCategories();
  }

  void getCategories() async {
    subscription = CategoryRepo.instance.categoryStream.listen(
      (event) {
        categories = event;
        notifyListeners();
      },
    );
    await CategoryRepo.instance.getCategories().then(
      (value) {
        value.fold(
          (l) => Toast.showFailed(message: l.getException()),
          (r) => notifyListeners(),
        );
      },
    );
  }

  Future<void> addCategory(CategoryModel category) async {
    await CategoryRepo.instance.addCategory(category).then(
      (value) {
        value.fold(
          (l) => Toast.showFailed(message: l.getException()),
          (r) async {
            category.id = r;
            category.createdAt = DateTime.now();
            updateCategory(category);
          },
        );
      },
    );
  }

  Future<void> updateCategory(CategoryModel category) async {
    category.isModified = true;
    await CategoryRepo.instance.updateCategory(category).then(
      (value) {
        value.fold(
          (l) => Toast.showFailed(message: l.getException()),
          (r) => Toast.showSuccess(message: S.current.categoryUpdated),
        );
      },
    );
  }

  Future<void> upsertCategory(CategoryModel category) async {
    if (category.id == null) {
      await addCategory(category);
    } else {
      await updateCategory(category);
    }
  }

  Future<void> deleteCategory(CategoryModel category) async {
    category.isDeleted = true;
    await CategoryRepo.instance.updateCategory(category).then(
      (value) {
        value.fold(
          (l) => Toast.showFailed(message: l.getException()),
          (r) => Toast.showSuccess(message: S.current.categoryDeleted),
        );
      },
    );
  }

  void orderCategories() {
    String sortBy =
        LocalPreferences.instance.getString("category_filter") ?? 'name';
    bool ascending =
        (LocalPreferences.instance.getString("category_ascending") ?? 'asc') ==
        'asc';
    if (sortBy == 'name') {
      categories.sort((a, b) => a.name.compareTo(b.name));
    } else if (sortBy == 'createdAt') {
      categories.sort(
        (a, b) => a.createdAt!.compareTo(b.createdAt!),
      );
    }
    if (!ascending) {
      categories = categories.reversed.toList();
    }
    notifyListeners();
  }

  @override
  void dispose() {
    subscription?.cancel();
    super.dispose();
  }
}

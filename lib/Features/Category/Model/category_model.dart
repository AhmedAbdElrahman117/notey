import 'package:flutter/material.dart';

class CategoryModel {
  int? id;
  String name;
  DateTime? createdAt;
  bool isSynced;
  bool isModified;
  bool isDeleted;
  Color cardColor;

  CategoryModel({
    this.id,
    required this.name,
    this.createdAt,
    this.isSynced = false,
    this.isModified = false,
    this.isDeleted = false,
    this.cardColor = Colors.green,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'syncStatus': isSynced.toString(),
      'isModified': isModified.toString(),
      'isDeleted': isDeleted.toString(),
      'createdAt': createdAt?.toString() ?? DateTime.now().toString(),
    };
  }

  factory CategoryModel.fromMap(Map<String, dynamic> data) {
    return CategoryModel(
      id: data['id'],
      name: data['name'],
      isSynced: bool.parse(data['syncStatus'] ?? 'false'),
      isModified: bool.parse(data['isModified'] ?? 'false'),
      isDeleted: bool.parse(data['isDeleted'] ?? 'false'),
      createdAt: DateTime.parse(data['createdAt']),
    );
  }
}

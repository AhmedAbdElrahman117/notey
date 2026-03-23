import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:linkify/linkify.dart';
import 'package:notey/Core/app_colors.dart';

class NoteModel {
  int? id;
  String title;
  Document content;
  DateTime? createdAt;
  String category;
  bool isSynced;
  bool isModified;
  bool isDeleted;
  bool isFavourite;
  int? colorId;
  String? imageBackground;
  List<String> images;
  Color noteColor;

  NoteModel({
    this.id,
    required this.title,
    required this.content,
    this.createdAt,
    this.category = "Uncategorized",
    this.colorId,
    this.imageBackground,
    this.isSynced = false,
    this.isModified = false,
    this.isDeleted = false,
    this.isFavourite = false,
    this.noteColor = Colors.green,
    List<String>? images,
  }) : images = images ?? [];

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'content': encodeQuillContent(content),
      'createdAt': createdAt == null
          ? DateTime.now().toString()
          : createdAt.toString(),
      'category': category,
      'backgroundColor': colorId,
      'backgroundPath': imageBackground,
      'syncStatus': isSynced.toString(),
      'isModified': isModified.toString(),
      'isDeleted': isDeleted.toString(),
      'isFavourite': isFavourite.toString(),
      'images': images.isEmpty ? "" : images.join(','),
    };
  }

  factory NoteModel.fromMap(Map<String, dynamic> map) {
    dynamic contentData = map['content'];
    Document doc;

    if (contentData == null) {
      doc = Document();
    } else if (contentData is String) {
      doc = Document.fromJson(jsonDecode(contentData));
    } else if (contentData is List || contentData is Map) {
      doc = Document.fromJson(contentData);
    } else {
      doc = Document();
    }

    return NoteModel(
      id: map['id'],
      title: map['title'] ?? '',
      content: doc,
      createdAt: DateTime.parse(map['createdAt']),
      category: map['category'],
      colorId: map['backgroundColor'],
      imageBackground: map['backgroundPath'],
      isSynced: bool.parse(map['syncStatus'] ?? 'false'),
      isModified: bool.parse(map['isModified'] ?? 'false'),
      isDeleted: bool.parse(map['isDeleted'] ?? 'false'),
      isFavourite: bool.parse(map['isFavourite'] ?? 'false'),
      images: map['images'] as String == "" || map['images'] == null
          ? []
          : (map['images'] as String).split(','),
    );
  }

  factory NoteModel.fromNote(NoteModel note) {
    return NoteModel(
      id: note.id,
      title: note.title,
      content: note.content,
      createdAt: note.createdAt,
      category: note.category,
      colorId: note.colorId,
      imageBackground: note.imageBackground,
      isSynced: note.isSynced,
      isModified: note.isModified,
      isDeleted: note.isDeleted,
      isFavourite: note.isFavourite,
      images: List<String>.from(note.images),
    );
  }

  String encodeQuillContent(Document doc) {
    linkifyDocument();
    return jsonEncode(doc.toDelta().toJson());
  }

  void linkifyDocument() {
    final plainText = content.toPlainText();

    // Find all link-like patterns
    final elements = linkify(plainText);

    int offset = 0;
    for (final element in elements) {
      final text = element.text;
      final length = text.length;

      if (element is LinkableElement) {
        // Apply link attribute at the right range
        content.format(
          offset,
          length,
          Attribute.clone(Attribute.link, element.url),
        );
      } else {
        Attribute.clone(Attribute.link, null);
        // Ensure we don't carry over any previous link attribute
        content.format(
          offset,
          length,
          Attribute.clone(Attribute.link, null),
        );
      }

      offset += length;
    }
  }

  Document decodeQuillContent(String content) {
    return Document.fromJson(jsonDecode(content));
  }
}

class EmptyNoteModel extends NoteModel {
  EmptyNoteModel()
    : super(
        id: null,
        title: '',
        content: Document(),
        createdAt: DateTime.now(),
        category: 'Uncategorized',
        isSynced: false,
        isModified: false,
        isDeleted: false,
        isFavourite: false,
        noteColor: AppColors().getRandomColor(),
        images: [],
      );
}

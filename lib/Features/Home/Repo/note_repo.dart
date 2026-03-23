import 'dart:async';
import 'dart:developer';

import 'package:dartz/dartz.dart' hide Order;
import 'package:flutter/material.dart';
import 'package:notey/Core/app_colors.dart';
import 'package:notey/Core/app_exception.dart';
import 'package:notey/Core/category_utils.dart';
import 'package:notey/Core/local_preferences.dart';
import 'package:notey/Features/Home/Dialogs/note_filter_sheet.dart';
import 'package:notey/Features/Home/Model/note_model.dart';
import 'package:notey/Features/Home/Repo/background_repo.dart';
import 'package:notey/Features/Home/Services/note_service.dart';
import 'package:notey/Features/Note/Service/images_service.dart';
import 'package:notey/generated/l10n.dart';
import 'package:sqflite/sqflite.dart';

class NoteRepo {
  NoteRepo._();

  static final NoteRepo instance = NoteRepo._();

  factory NoteRepo() => instance;

  StreamController<List<NoteModel>> streamController =
      StreamController.broadcast();

  Stream<List<NoteModel>> get notesStream => streamController.stream;

  List<NoteModel> cache = [];

  int cacheCount = 0;

  String? currentFilter;

  final BackgroundRepo _backgroundRepo = BackgroundRepo();

  final NoteService _noteService = NoteService();

  final AppColors _appColors = AppColors();

  final List<Color> _selectedColors = [];

  List<Color> generateNoteColors(int count) {
    _selectedColors.clear();
    for (int i = 0; i < count; i++) {
      _selectedColors.add(_appColors.getRandomColor());
    }
    return _selectedColors;
  }

  Future<Either<AppException, Unit>> getNotes({
    String? column,
    String? order,
    String? query,
    String? where,
    List<Object?>? whereArgs,
  }) async {
    try {
      var data = await _noteService.getNotes(
        column: column,
        order: order,
        query: query,
        where: where,
        whereArgs: whereArgs,
      );

      if (data.length != cacheCount) {
        generateNoteColors(data.length);
        cacheCount = data.length;
      }

      cache = data.indexed.map((e) {
        return NoteModel.fromMap(e.$2)..noteColor = _selectedColors[e.$1];
      }).toList();

      if (currentFilter != null &&
          currentFilter != S.current.all.toLowerCase()) {
        filter(currentFilter!).fold((l) => left(l), (r) {
          streamController.add(r);
        });
      } else {
        streamController.add(List.from(cache));
      }

      return right(unit);
    } on DatabaseException catch (e) {
      return left(LocalDatabaseException(dbException: e));
    } catch (e) {
      log(e.toString());
      return left(UnknownException(message: e.toString()));
    }
  }

  Future<Either<AppException, Unit>> addNote(
    NoteModel note,
    List<String> images,
  ) async {
    try {
      var id = await _noteService.addNote(note.toMap());

      if (images.isNotEmpty) {
        // Add images to note
        await ImagesHelper().saveToNote(
          noteID: id,
          images: images,
        );

        note.images.addAll(images);
        await updateNote(note);
      }

      var notes = convertNotes(await _noteService.getNotes());

      updateStream(notes);

      await _backgroundRepo.registerBackgroundTask('addNote');

      return right(unit);
    } on DatabaseException catch (e) {
      return left(LocalDatabaseException(dbException: e));
    } catch (e) {
      log(e.toString());
      return left(UnknownException(message: e.toString()));
    }
  }

  Future<Either<AppException, int>> updateNote(NoteModel note) async {
    try {
      var id = await _noteService.updateNote(note.toMap());

      var notes = convertNotes(await _noteService.getNotes());

      updateStream(notes);

      await _backgroundRepo.registerBackgroundTask('updateNote');

      return right(id);
    } on DatabaseException catch (e) {
      return left(LocalDatabaseException(dbException: e));
    } catch (e) {
      return left(UnknownException(message: e.toString()));
    }
  }

  Future<Either<AppException, int>> deleteNote(int id) async {
    try {
      var deletedID = await _noteService.deleteNote(id);

      await _backgroundRepo.registerBackgroundTask('deleteNote');

      var notes = convertNotes(await _noteService.getNotes());

      updateStream(notes);

      return right(deletedID);
    } on DatabaseException catch (e) {
      return left(LocalDatabaseException(dbException: e));
    } catch (e) {
      return left(UnknownException(message: e.toString()));
    }
  }

  Future<Either<AppException, List<NoteModel>>> order(
    Filter filter,
    bool asc,
    List<NoteModel> notes,
  ) async {
    try {
      if (filter == Filter.createdAt) {
        notes.sort((a, b) => a.createdAt!.compareTo(b.createdAt!));
      } else if (filter == Filter.title) {
        notes.sort(
          (a, b) => a.title.toLowerCase().compareTo(b.title.toLowerCase()),
        );
      } else {
        notes.sort(
          (a, b) =>
              a.category.toLowerCase().compareTo(b.category.toLowerCase()),
        );
      }
      if (!asc) {
        notes = notes.reversed.toList();
      }

      return right(notes);
    } catch (e) {
      return left(UnknownException(message: e.toString()));
    }
  }

  Future<Either<AppException, Unit>> saveOrder(Filter filter, bool asc) async {
    try {
      await LocalPreferences.instance.setString('filter', filter.name);
      await LocalPreferences.instance.setString('order', asc ? 'asc' : 'desc');
      return right(unit);
    } catch (e) {
      return left(UnknownException(message: e.toString()));
    }
  }

  Either<AppException, List<NoteModel>> filter(String filter) {
    try {
      currentFilter = filter;
      var lowerFilter = filter.toLowerCase();

      if (lowerFilter == S.current.all.toLowerCase()) {
        return right(cache);
      } else if (CategoryUtils.isUncategorized(filter)) {
        // Special handling for uncategorized filter
        var data = cache
            .where(
              (element) => CategoryUtils.isUncategorized(element.category),
            )
            .toList();
        return right(data);
      } else {
        var data = cache
            .where(
              (element) => element.category.toLowerCase() == lowerFilter,
            )
            .toList();
        return right(data);
      }
    } catch (e) {
      return left(UnknownException(message: 'Filter error:${e.toString()}'));
    }
  }

  List<NoteModel> convertNotes(List<Map<String, dynamic>> maps) {
    return maps.map((map) => NoteModel.fromMap(map)).toList();
  }

  void updateStream(List<NoteModel> notes) {
    streamController.add(List.from(notes));
  }
}

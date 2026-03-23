import 'package:notey/Core/local_preferences.dart';
import 'package:notey/Core/supabase_db.dart';
import 'package:notey/Features/Category/Services/category_service.dart';
import 'package:notey/Features/Home/Services/note_service.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SyncService {
  bool get syncStatus => LocalPreferences.instance.getBool('sync') ?? false;

  final NoteService _noteService = NoteService();

  final CategoryService _categoryService = CategoryService();

  Future<void> checkSyncStatus(Future<void> Function() onSyncEnabled) async {
    if (syncStatus && Supabase.instance.client.auth.currentUser != null) {
      await onSyncEnabled();
    } else {
      return;
    }
  }

  Future<List<Map<String, dynamic>>> getNotes(
    String where,
  ) async {
    return await _noteService.getNotes(where: where);
  }

  Future<List<Map<String, dynamic>>> getCategories(
    String where,
  ) async {
    return await _categoryService.getCategories(where: where);
  }

  List<Map<String, dynamic>> filterData(List<Map<String, dynamic>> data) {
    var keysToRemove = [
      'syncStatus',
      'isModified',
      'isDeleted',
    ];

    Supabase.instance.client.auth.currentUser?.id;

    return data.map(
          (e) {
            e.removeWhere(
              (key, value) => keysToRemove.contains(key),
            );
            e.addAll({
              'user_id': Supabase.instance.client.auth.currentUser?.id,
            });
          },
        ).toList()
        as List<Map<String, dynamic>>;
  }

  //Change Function Order of Operations

  Future<bool> sync(String task) async {
    bool isSuccess = false;
    await checkSyncStatus(
      () async {
        SupabaseDB supabaseDB = SupabaseDB();
        switch (task) {
          case 'addNote':
            var notes = await getNotes('syncStatus="false"');
            var filteredNotes = filterData(notes);
            await supabaseDB.addNote(filteredNotes);
            await _noteService.updateAllNotes(
              filteredNotes.map(
                    (e) {
                      e['syncStatus'] = true;
                    },
                  ).toList()
                  as List<Map<String, dynamic>>,
            );
            isSuccess = true;
            break;

          case 'updateNote':
            var notes = await getNotes(
              'isModified="true" AND isDeleted="false"',
            );
            var filteredNotes = filterData(notes);
            await supabaseDB.updateNote(filteredNotes);
            await _noteService.updateAllNotes(
              filteredNotes.map(
                    (e) {
                      e['isModified'] = true;
                    },
                  ).toList()
                  as List<Map<String, dynamic>>,
            );
            isSuccess = true;
            break;

          case 'deleteNote':
            var notes = await getNotes('isDeleted="true"');
            if (notes.isNotEmpty) {
              var ids = notes.map((e) => e['id'] as int).toList();
              await supabaseDB.deleteNote(ids);
              await _noteService.deleteAllNotes(ids);
            }
            isSuccess = true;
            break;

          case 'addCategory':
            var categories = await getCategories('syncStatus="false"');
            if (categories.isNotEmpty) {
              var filteredCategories = filterData(categories);
              await supabaseDB.addCategory(filteredCategories);
              await _categoryService.updateAllCategories(
                filteredCategories.map(
                      (e) {
                        e['syncStatus'] = true;
                      },
                    ).toList()
                    as List<Map<String, dynamic>>,
              );
            }
            isSuccess = true;
            break;

          case 'updateCategory':
            var categories = await getCategories(
              'isModified="true" AND isDeleted="false"',
            );
            if (categories.isNotEmpty) {
              var filteredCategories = filterData(categories);
              await supabaseDB.updateCategory(filteredCategories);
              await _categoryService.updateAllCategories(
                filteredCategories.map(
                      (e) {
                        e['isModified'] = true;
                      },
                    ).toList()
                    as List<Map<String, dynamic>>,
              );
            }
            isSuccess = true;
            break;

          case 'deleteCategory':
            var categories = await getCategories('isDeleted="true"');
            if (categories.isNotEmpty) {
              var ids = categories.map((e) => e['id'] as int).toList();
              await supabaseDB.deleteCategory(ids);
              await _categoryService.deleteAllCategories(ids);
            }
            isSuccess = true;
            break;
        }
      },
    );
    return Future.value(isSuccess);
  }
}

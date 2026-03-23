import 'package:notey/Core/local_preferences.dart';
import 'package:notey/Core/notes_db.dart';
import 'package:notey/Features/Home/Dialogs/note_filter_sheet.dart';
import 'package:notey/Features/Home/Model/note_model.dart';

class NoteService {
  final NoteDB noteDB = NoteDB();

  Future<List<Map<String, dynamic>>> getNotes({
    String? column,
    String? order,
    String? query,
    String? where,
    List<String>? columns,
    List<Object?>? whereArgs,
  }) async {
    // get Notes
    return await noteDB.get(
      column: column,
      order: order,
      columns: columns,
      where: where,
      whereArgs: whereArgs,
      query: query,
    );
  }

  Future<int> addNote(Map<String, dynamic> note) async {
    return await noteDB.insert(note);
  }

  Future<int> addAllNotes(List<Map<String, dynamic>> notes) async {
    return await noteDB.insertAll(notes);
  }

  Future<int> updateNote(Map<String, dynamic> note) async {
    return await noteDB.update(note);
  }

  Future<int> updateAllNotes(List<Map<String, dynamic>> notes) async {
    return await noteDB.updateAll(notes);
  }

  Future<int> deleteNote(int id) async {
    return await noteDB.delete(id);
  }

  Future<int> deleteAllNotes(List<int> ids) async {
    return await noteDB.deleteAll(ids);
  }

  Future<List<NoteModel>> order(
    Filter filter,
    bool asc,
    List<NoteModel> notes,
  ) async {
    await saveOrder(filter, asc);
    if (filter == Filter.createdAt) {
      notes.sort((a, b) => a.createdAt!.compareTo(b.createdAt!));
    } else if (filter == Filter.title) {
      notes.sort(
        (a, b) => a.title.toLowerCase().compareTo(b.title.toLowerCase()),
      );
    } else {
      notes.sort(
        (a, b) => a.category.toLowerCase().compareTo(b.category.toLowerCase()),
      );
    }
    if (!asc) {
      notes = notes.reversed.toList();
    }
    return notes;
  }

  Future<void> saveOrder(Filter filter, bool asc) async {
    await LocalPreferences.instance.setString('filter', filter.name);
    await LocalPreferences.instance.setString('order', asc ? 'asc' : 'desc');
  }
}

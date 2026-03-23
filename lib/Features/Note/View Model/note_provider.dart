import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:notey/Core/toast.dart';
import 'package:notey/Features/Category/Model/category_model.dart';
import 'package:notey/Features/Home/Model/note_model.dart';
import 'package:notey/Features/Home/Repo/note_repo.dart';
import 'package:notey/Features/Note/Service/images_service.dart';
import 'package:notey/generated/l10n.dart';

class NoteProvider extends ChangeNotifier {
  bool isAddButtonEnabled = false;
  bool showSearchBar = false;

  List<CategoryModel> categories;
  NoteModel currentNote = NoteModel(title: '', content: Document());

  final ImagesHelper imagesHelper = ImagesHelper();

  List<String> newPickedImages = [];

  final NoteRepo noteRepo = NoteRepo();

  NoteProvider({NoteModel? currentNote, required this.categories}) {
    if (currentNote != null) {
      this.currentNote = NoteModel.fromNote(currentNote);
    } else {
      this.currentNote = NoteModel(title: '', content: Document());
    }
    log('Current Note ID: ${this.currentNote.id.toString()}');
  }

  void triggerSearchBar() {
    showSearchBar = !showSearchBar;
    notifyListeners();
  }

  void triggerTheme({Color? color, String? backround}) async {
    currentNote.colorId = color?.toARGB32();
    currentNote.imageBackground = backround;
    triggerAddButton(true);
    notifyListeners();
  }

  Future<void> addNote() async {
    var res = await noteRepo.addNote(currentNote, newPickedImages);

    res.fold(
      (l) => Toast.showFailed(message: l.getException()),
      (note) => Toast.showSuccess(message: S.current.noteAdded),
    );
  }

  Future<void> updateNote() async {
    currentNote.isModified = true;
    if (newPickedImages.isNotEmpty) {
      final images = await imagesHelper.saveToNote(
        noteID: currentNote.id!,
        images: newPickedImages,
      );

      currentNote.images.addAll(images);
    }

    var res = await noteRepo.updateNote(currentNote);

    res.fold(
      (l) => log(l.getException()),
      (r) => r,
    );
  }

  Future<void> upsertNote({
    required String title,
    required Document content,
    required String category,
  }) async {
    currentNote.title = title;
    currentNote.content = content;
    currentNote.category = category;

    if (currentNote.id == null) {
      await addNote();
    } else {
      await updateNote();
    }
  }

  void deleteNote() async {
    int noteID = currentNote.id!;
    currentNote.isDeleted = true;
    var del = await noteRepo.updateNote(currentNote);

    del.fold(
      (l) => Toast.showFailed(message: l.getException()),
      (r) async {
        await imagesHelper.deleteNoteImages(noteID);
      },
    );
  }

  Future<void> pickImages() async {
    newPickedImages.addAll(await imagesHelper.pickImages());
    if (currentNote.id != null && newPickedImages.isNotEmpty) {
      triggerAddButton(true);
    }

    notifyListeners();
  }

  void deleteImage({required String imagePath}) {
    if (newPickedImages.contains(imagePath)) {
      newPickedImages.remove(imagePath);
    } else {
      currentNote.images.remove(imagePath);
      triggerAddButton(true);
      return;
    }
    notifyListeners();
  }

  void triggerAddButton(bool enable) {
    if (enable != isAddButtonEnabled) {
      isAddButtonEnabled = enable;
      log('State Changed');
      notifyListeners();
    }
  }
}

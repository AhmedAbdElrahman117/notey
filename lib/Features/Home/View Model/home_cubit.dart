import 'dart:async';
import 'dart:developer';

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:notey/Features/Category/Model/category_model.dart';
import 'package:notey/Features/Category/Repo/category_repo.dart';
import 'package:notey/Features/Home/Dialogs/note_filter_sheet.dart';
import 'package:notey/Features/Home/Model/note_model.dart';
import 'package:notey/Features/Home/Repo/note_repo.dart';
import 'package:notey/Features/Home/View%20Model/home_states.dart';

class HomeCubit extends HydratedCubit<HomeStates> {
  List<NoteModel> noteList = [];
  List<CategoryModel> categoriesList = [];
  StreamSubscription? subscription;
  StreamSubscription? categorySubscription;
  NoteRepo noteRepo = NoteRepo();
  CategoryRepo categoryRepo = CategoryRepo();

  bool asc = false;
  String filters = 'createdAt';
  bool favouriteView = false;

  HomeCubit() : super(HomeInitialState()) {
    log('Home Cubit Initialized');
    getNotes();
    getCategories();

    subscription = noteRepo.notesStream.listen((event) {
      noteList = event;
      noteList.isEmpty
          ? emit(HomeNotesEmptyState())
          : emit(HomeNotesLoadedState());
    });

    categorySubscription = categoryRepo.categoryStream.listen(
      (event) {
        categoriesList = event;
        emit(HomeChangeCategoryState());
      },
    );
  }

  void getNotes() async {
    emit(HomeNotesLoadingState());
    await noteRepo.getNotes(column: filters, order: asc ? 'asc' : 'desc').then(
      (value) {
        value.fold(
          (l) {
            emit(HomeNotesErrorState(message: l.getException()));
          },
          (r) => null,
        );
      },
    );
  }

  void getCategories() async {
    await categoryRepo.getCategories().then(
      (value) {
        //Toast.showFailed(message: l.getException())
        value.fold(
          (l) => emit(HomeNotesErrorState(message: l.getException())),
          (r) => null,
        );
      },
    );
  }

  void deleteNote(NoteModel note) async {
    note.isDeleted = true;
    await noteRepo.updateNote(note).then(
      (value) {
        //Toast.showFailed(message: l.getException())
        value.fold(
          (l) => emit(HomeNotesErrorState(message: l.getException())),
          (r) {
            emit(HomeDeleteNoteState());
          },
        );
      },
    );
  }

  Future<void> updateNote(NoteModel note) async {
    note.isModified = true;
    await noteRepo.updateNote(note).then(
      (value) {
        value.fold(
          (l) => emit(HomeNotesErrorState(message: l.getException())),
          (r) {
            emit(HomeUpdateNoteState());
          },
        );
      },
    );
  }

  void orderNotes(Filter filter, Order orderBy) async {
    var order = await noteRepo.order(
      filter,
      orderBy == Order.asc,
      noteList,
    );

    order.fold(
      (l) => emit(HomeNotesErrorState(message: l.getException())),
      (r) => noteList = r,
    );

    filters = filter.value;
    asc = orderBy == Order.asc;
    emit(
      HomeFilterNotesState(),
    );
  }

  void toggleFavouriteView() async {
    favouriteView = !favouriteView;
    emit(HomeChangeFavouriteViewState());
  }

  List<NoteModel> favouriteData() {
    return favouriteView
        ? noteList
              .where(
                (element) => element.isFavourite,
              )
              .toList()
        : noteList;
  }

  void filter(String filter) {
    var res = noteRepo.filter(filter);
    // Toast.showFailed(message: l.getException())
    res.fold(
      (l) => emit(HomeNotesErrorState(message: l.getException())),
      (r) {
        noteList = r;
        noteList.isNotEmpty
            ? emit(HomeNotesLoadedState())
            : emit(HomeNotesEmptyState());
      },
    );
  }

  @override
  Future<void> close() {
    log('Home Cubit Disposed');
    subscription?.cancel();
    categorySubscription?.cancel();
    return super.close();
  }

  @override
  HomeStates? fromJson(Map<String, dynamic> json) {
    try {
      final savedFilter = json['filter'] as String? ?? 'createdAt';
      filters = savedFilter.isEmpty ? 'createdAt' : savedFilter;

      asc = json['asc'] as bool? ?? false;
      favouriteView = json['favouriteView'] as bool? ?? false;

      return state;
    } catch (e) {
      log('HydratedBloc Error: $e');
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(HomeStates state) {
    return {
      'filter': filters,
      'asc': asc,
      'favouriteView': favouriteView,
    };
  }
}

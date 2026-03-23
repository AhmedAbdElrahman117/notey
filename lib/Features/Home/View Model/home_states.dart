class HomeStates {}

class HomeInitialState extends HomeStates {}

class HomeChangeCategoryState extends HomeStates {}

class HomeChangeFavouriteViewState extends HomeStates {}

class HomeNotesLoadingState extends HomeStates {}

class HomeNotesLoadedState extends HomeStates {}

class HomeNotesEmptyState extends HomeStates {}

class HomeNotesErrorState extends HomeStates {
  final String message;
  HomeNotesErrorState({required this.message});
}

class HomeUpdateNoteState extends HomeStates {}

class HomeDeleteNoteState extends HomeStates {}

class HomeFilterNotesState extends HomeStates {}

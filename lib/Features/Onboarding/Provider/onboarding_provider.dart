import 'package:flutter/material.dart';

class OnboardingProvider extends ChangeNotifier {
  int currentPage = 0;
  int totalPages = 3;
  late int lastPage;

  OnboardingProvider() {
    lastPage = totalPages - 1;
  }

  bool isFirstPage = true;
  bool isLastPage = false;

  void setCurrentPage(int page) {
    currentPage = page;
    _checkPage(currentPage);
    notifyListeners();
  }

  void nextPage() {
    if (currentPage < totalPages - 1) {
      currentPage++;
      _checkPage(currentPage);
      notifyListeners();
    }
  }

  void previousPage() {
    if (currentPage > 0) {
      currentPage--;
      _checkPage(currentPage);
      notifyListeners();
    }
  }

  void _checkPage(int page) {
    switch (page) {
      case 0:
        isFirstPage = true;
        isLastPage = false;
        break;

      case 2:
        isFirstPage = false;
        isLastPage = true;
        break;

      case 1:
        isFirstPage = true;
        isLastPage = true;
        break;
    }
  }
}

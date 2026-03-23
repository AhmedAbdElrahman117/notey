import 'package:flutter/material.dart';
import 'package:flutter_quill/quill_delta.dart';
import 'package:notey/Features/Note/Data/extract_service.dart';

class ExtractProvider extends ChangeNotifier {
  final ExtractService extractService = ExtractService();

  bool isLoading = false;

  Future<void> saveAsText(String content) async {
    isLoading = true;
    notifyListeners();
    await extractService.saveAsText(content);
    isLoading = false;
    notifyListeners();
  }

  Future<void> saveAsPdf(String title, Delta content) async {
    isLoading = true;
    notifyListeners();
    await extractService.saveAsPdf(title, content);
    isLoading = false;
    notifyListeners();
  }
}

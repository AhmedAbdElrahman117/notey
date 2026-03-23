import 'package:flutter/foundation.dart';
import 'package:flutter_quill/quill_delta.dart';
import 'package:notey/Core/file_service.dart';
import 'package:notey/Core/pdf_service.dart';

class ExtractService {
  final FileService _fileService = FileService();

  final PdfService _pdfService = PdfService();

  Future<void> saveAsText(String text, [String? fileName]) async {
    await _fileService.saveFile(
      fileName: fileName ?? 'note',
      data: Uint8List.fromList(text.codeUnits),
    );
  }

  Future<void> saveAsPdf(String title, Delta text) async {
    final pdfData = await _pdfService.generatePdf(
      title: title,
      content: text,
    );

    await _fileService.saveFile(
      fileName: 'note.pdf',
      data: pdfData,
    );
  }
}

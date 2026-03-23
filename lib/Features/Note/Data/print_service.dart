import 'package:dartz/dartz.dart';
import 'package:flutter_quill/quill_delta.dart';
import 'package:notey/Core/app_exception.dart';
import 'package:notey/Core/pdf_service.dart';
import 'package:printing/printing.dart';

class PrintService {
  final PdfService pdfService = PdfService();

  Future<Either<AppException, bool>> printPdf({
    required String title,
    required Delta content,
  }) async {
    try {
      var res = await pdfService.generatePdf(
        title: title,
        content: content,
      );

      var done = await Printing.layoutPdf(
        onLayout: (format) => res,
      );

      return right(done);
    } catch (e) {
      return left(UnknownException(message: e.toString()));
    }
  }
}

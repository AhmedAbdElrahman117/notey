import 'package:flutter/services.dart';
import 'package:flutter_quill/quill_delta.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class PdfService {
  var pdf = pw.Document();

  pw.TextSpan _styleText(Delta delta) {
    List<pw.TextSpan> spans = [];

    for (var op in delta.toList()) {
      if (op.isInsert) {
        final text = op.data.toString();
        final attrs = op.attributes ?? {};

        pw.TextStyle style = pw.TextStyle();

        if (attrs['bold'] == true) {
          style = style.copyWith(fontWeight: pw.FontWeight.bold);
        }
        if (attrs['italic'] == true) {
          style = style.copyWith(fontStyle: pw.FontStyle.italic);
        }
        if (attrs['underline'] == true) {
          style = style.copyWith(decoration: pw.TextDecoration.underline);
        }

        spans.add(pw.TextSpan(text: text, style: style));
      }
    }
    return pw.TextSpan(children: spans);
  }

  void setPage({required String title, required Delta content}) {
    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (context) {
          return pageUI(title: title, content: content);
        },
      ),
    );
  }

  Future<pw.Font> _loadFont() async {
    final fontData = await rootBundle.load("assets/fonts/Roboto-Regular.ttf");
    return pw.Font.ttf(fontData.buffer.asByteData());
  }

  Future<void> setPdf() async {
    pdf = pw.Document(
      theme: pw.ThemeData(
        defaultTextStyle: pw.TextStyle(
          font: await _loadFont(),
          fontSize: 20,
        ),
      ),
    );
  }

  Future<Uint8List> savePdf() async {
    return await pdf.save();
  }

  Future<Uint8List> generatePdf({
    required String title,
    required Delta content,
  }) async {
    await setPdf();

    setPage(title: title, content: content);

    return await savePdf();
  }

  pw.Column pageUI({
    required String title,
    required Delta content,
  }) {
    return pw.Column(
      children: [
        pw.Text(
          title.isEmpty ? 'Untitled' : title,
          style: pw.TextStyle(
            fontSize: 28,
            fontWeight: pw.FontWeight.bold,
          ),
        ),
        pw.SizedBox(height: 24),
        pw.RichText(
          text: content.isEmpty
              ? pw.TextSpan(text: 'Untitled')
              : _styleText(content),
        ),
      ],
    );
  }
}

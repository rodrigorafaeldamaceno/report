import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:report/helpers/helpers.dart';

Future<pw.Widget> secondPage() async {
  final page = pw.MemoryImage(
    (await rootBundle.load('assets/images/second_page.png'))
        .buffer
        .asUint8List(),
  );

  return pw.Image(
    page,
    width: PdfPageFormat.a4.width - differenceInWidth,
  );
}

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';

Future<void> saveAsFile(
  BuildContext context,
  LayoutCallback build,
  PdfPageFormat pageFormat,
) async {
  final bytes = await build(pageFormat);

  final appDocDir = await getApplicationDocumentsDirectory();
  final appDocPath = appDocDir.path;
  final file = File(appDocPath + '/' + 'document.pdf');
  print('Save as file ${file.path} ...');
  await file.writeAsBytes(bytes);
  await OpenFile.open(file.path);
}

double differenceInWidth = 0.4269974420166136;
import 'package:flutter/material.dart';

import 'package:printing/printing.dart';
import 'package:report/pages/report/report.dart';

class ReportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pdf Printing Example'),
      ),
      body: PdfPreview(
        maxPageWidth: 700,
        build: generateResume,
      ),
    );
  }
}

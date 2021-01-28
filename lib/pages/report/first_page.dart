import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

Future<pw.Widget> firstPage() async {
  final capa = pw.MemoryImage(
    (await rootBundle.load('assets/images/capa.png')).buffer.asUint8List(),
  );

  final botoom = pw.MemoryImage(
    (await rootBundle.load('assets/images/botoom_p1.png')).buffer.asUint8List(),
  );

  return pw.Column(
    children: [
      pw.Image(
        capa,
        width: PdfPageFormat.a4.width,
      ),
      pw.Container(
        padding: pw.EdgeInsets.only(
          bottom: PdfPageFormat.a4.marginBottom * 1.5,
          right: PdfPageFormat.a4.marginRight * 0.8,
          left: PdfPageFormat.a4.marginLeft * 0.8,
        ),
        child: pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.SizedBox(height: 8),
            pw.Align(
              alignment: pw.Alignment.centerRight,
              child: pw.Text(
                'Nº do pedido: 001169',
                textAlign: pw.TextAlign.right,
              ),
            ),
            pw.Text('Solicitante: MARYNE COMERCIO DE ALIMENTOS LTDA ME'),
            pw.Text('Telefone:'),
            pw.Text(
                'Endereço: Travessa Primeira São Jorge, 146, , Marambaia, Belém, 66615730, PA'),
          ],
        ),
      ),
      pw.Image(
        botoom,
        width: PdfPageFormat.a4.width,
      )
    ],
  );
}

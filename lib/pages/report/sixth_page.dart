import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

Future<pw.Widget> sixthPage() async {
  final botoom = pw.MemoryImage(
    (await rootBundle.load('assets/images/botoom_p6.png')).buffer.asUint8List(),
  );

  const PdfColor yeloow = PdfColor.fromInt(0xFFD859);
  const PdfColor green = PdfColor.fromInt(0x126921);

  return pw.Container(
    height: PdfPageFormat.a4.height,
    child: pw.Column(
      children: [
        pw.Container(
          padding: pw.EdgeInsets.only(
            top: PdfPageFormat.a4.marginTop * 0.5,
            // bottom: PdfPageFormat.a4.marginBottom * 1.5,
            right: PdfPageFormat.a4.marginRight * 0.8,
            left: PdfPageFormat.a4.marginLeft * 0.8,
          ),
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            mainAxisSize: pw.MainAxisSize.max,
            children: [
              pw.Container(
                margin: pw.EdgeInsets.only(left: 20),
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text(
                      'g) Os prazos, preços e demais condições apresentadas nesta proposta pela CONTRATADA' +
                          ' não incluem a execução dos seguintes serviços e materiais:',
                      textAlign: pw.TextAlign.justify,
                    ),
                    pw.Text(
                        '   - Cálculos estruturais(estruturas), ajustes e/ ou reforços de estruturas para recebimento dos equipamentos;'),
                    pw.Text('   - Obras civis de qualquer natureza, como adequações no padrão de entrada, nova' +
                        ' infraestrutura elétrica para interligação na rede interna existente e fundações para' +
                        ' instalação dos módulos no solo(considerando, neste caso, que os painéis serão instalados' +
                        ' em cobertura ou telhado cerâmico existente);'),
                    pw.Text(
                        '   - Adequações ou reparos nas instalações elétricas existentes;'),
                    pw.Text(
                        '   - Adequações junto às normas das distribuidoras e concessionárias;'),
                    pw.Text('h) Instalação e teste do SFV;'),
                    pw.Text('i) Avaliação dos resultados;'),
                    pw.Text('j) Avaliação do Cliente;'),
                  ],
                ),
              ),
              pw.SizedBox(height: 10),
              pw.Text(
                '4 - Metodologia',
                style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
              ),
              pw.Text(
                'O sistema fotovoltaico está de acordo com as seguintes normas:\n' +
                    'ABNT: NBR - 16274, NBR - 10899 e NBR-16149;\n' +
                    'IEC: 60364, 61010 e 61557.',
                textAlign: pw.TextAlign.justify,
              ),
              pw.SizedBox(height: 10),
              pw.Text(
                '5 - Plano de ação',
                style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
              ),
              pw.Text(
                'Segue plano de ação para istalação do Sistema Fotovoltaico (SFV)',
              ),
              pw.Container(
                padding: pw.EdgeInsets.all(20),
                child: pw.Table.fromTextArray(
                  // cellAlignment: pw.Alignment,
                  border: pw.TableBorder.all(color: yeloow, width: 2),
                  headerStyle: pw.TextStyle(
                    fontWeight: pw.FontWeight.bold,
                    color: green,
                  ),
                  data: const <List<String>>[
                    <String>['Cronograma', '1 mês', '2 mês', '3 mês'],
                    <String>[
                      'fhfghffh fjfgfghfffggfh fghfghfgg',
                      'PDF 1.0',
                      'Acrobat 1',
                      'dfhjfh'
                    ],
                    <String>['1993', 'PDF 1.0', 'Acrobat 1', 'dfhjfh'],
                    <String>['1993', 'PDF 1.0', 'Acrobat 1', 'dfhjfh'],
                    <String>['1993', 'PDF 1.0', 'Acrobat 1', 'dfhjfh'],
                    <String>['1993', 'PDF 1.0', 'Acrobat 1', 'dfhjfh'],
                    <String>['1993', 'PDF 1.0', 'Acrobat 1', 'dfhjfh'],
                    <String>['1993', 'PDF 1.0', 'Acrobat 1', 'dfhjfh'],
                  ],
                ),
              ),
              pw.SizedBox(
                height: 250,
              ),
            ],
          ),
        ),
        pw.Image(
          botoom,
          width: PdfPageFormat.a4.width,
        ),
      ],
    ),
  );
}

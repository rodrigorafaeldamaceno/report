import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

Future<pw.Widget> seventhPage() async {
  final garantia = pw.MemoryImage(
    (await rootBundle.load('assets/images/garantia.png')).buffer.asUint8List(),
  );
  final moneyIcon = pw.MemoryImage(
    (await rootBundle.load('assets/images/money_icon.png'))
        .buffer
        .asUint8List(),
  );

  final botoom = pw.MemoryImage(
    (await rootBundle.load('assets/images/botoom_p7.png')).buffer.asUint8List(),
  );

  const PdfColor yeloow = PdfColor.fromInt(0xFFD859);
  const PdfColor blue = PdfColor.fromInt(0x04C6FF);
  const PdfColor white = PdfColor.fromInt(0xFFFFFF);
  const PdfColor grey = PdfColor.fromInt(0xE5E5E5);

  pw.TableRow _buildTableRow({@required String label, @required String value}) {
    return pw.TableRow(
      children: [
        pw.Container(
          color: yeloow,
          alignment: pw.Alignment.topRight,
          child: pw.Text('$label:  '),
        ),
        pw.Container(
          color: blue,
          child: pw.Text(
            '  $value',
            style: pw.TextStyle(
              fontWeight: pw.FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  pw.Widget _buildGradientCard(
      {@required PdfColor color,
      @required String firstLabel,
      @required String secondLabel}) {
    return pw.Row(
      children: [
        pw.Flexible(
          child: pw.Container(
            // margin: pw.EdgeInsets.symmetric(vertical: 4),
            padding: pw.EdgeInsets.all(16),
            decoration: pw.BoxDecoration(
              borderRadius: pw.BorderRadius.all(pw.Radius.circular(4)),
              gradient: pw.LinearGradient(colors: [
                color,
                white,
              ]),
            ),
            child: pw.Column(
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Text(firstLabel),
                pw.Text(secondLabel),
              ],
            ),
          ),
        ),
        pw.Image(moneyIcon, width: 40),
      ],
    );
  }

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
              pw.Text(
                '6 - Dados Técnicos',
                style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
              ),
              pw.Text(
                'O Sistema de energia solar fotovoltaico, aqui proposto, possui as seguintes características:',
                textAlign: pw.TextAlign.justify,
              ),
              pw.Padding(
                padding: pw.EdgeInsets.all(40),
                //   child: pw.Table.fromTextArray(
                //     border: pw.TableBorder.all(color: white, width: 2),
                //     headerCount: 0,
                //     rowDecoration: pw.BoxDecoration(color: blue),
                //     // cellPadding: pw.EdgeInsets.symmetric(horizontal: 30),
                //     cellAlignment: pw.Alignment.bottomLeft,
                //     columnWidths: {
                //       0: pw.FlexColumnWidth(1.0),
                //       1: pw.FlexColumnWidth(1.0),
                //     },
                //     data: <List<String>>[
                //       <String>['Amarelo', 'Azul'],
                //       <String>['Amarelo', 'Azul'],
                //       <String>['Amarelo', 'Azul'],
                //       <String>['Amarelo', 'Azul'],
                //       <String>['Amarelo', 'Azul'],
                //     ],
                //   ),
                child: pw.Column(
                  children: [
                    pw.Table(
                      children: [
                        pw.TableRow(
                          children: [
                            pw.Container(
                              alignment: pw.Alignment.center,
                              child: pw.Text('Cabeçalho'),
                            )
                          ],
                          decoration: pw.BoxDecoration(color: grey),
                        ),
                      ],
                    ),
                    pw.Table(
                      // border: pw.TableBorder(),
                      border: pw.TableBorder.all(color: white, width: 1),

                      defaultColumnWidth: pw.FlexColumnWidth(1.0),
                      children: [
                        _buildTableRow(
                            label: 'Label',
                            value:
                                'Value fjfghffj fhjfhfjfh fhfhjhf fjhfjhf fghfgfhgf'),
                        _buildTableRow(label: 'Label', value: 'Value'),
                        _buildTableRow(label: 'Label', value: 'Value'),
                        _buildTableRow(label: 'Label', value: 'Value'),
                        _buildTableRow(label: 'Label', value: 'Value'),
                      ],
                    ),
                  ],
                ),
              ),
              pw.Image(garantia),
              pw.SizedBox(height: 10),
              pw.Text(
                '7 - Valor proposto para investimento',
                style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
              ),
              pw.Text(
                'O investimento para a obra acima mencionada é de R\$ 1.270.200,00 (um milhão e duzentos e' +
                    ' setenta mil, duzentos reais);',
                textAlign: pw.TextAlign.justify,
              ),
              pw.SizedBox(height: 8),
              pw.Row(
                mainAxisSize: pw.MainAxisSize.max,
                mainAxisAlignment: pw.MainAxisAlignment.spaceEvenly,
                children: [
                  pw.Image(moneyIcon),
                  pw.Text(
                    'PAYBACK (Tempo de retorno) 3,5 anos.',
                    style: pw.TextStyle(
                      color: blue,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  )
                ],
              ),
              pw.Text(
                'Seu custo atual sem energia solar',
                style: pw.TextStyle(
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.SizedBox(height: 4),
              _buildGradientCard(
                color: yeloow,
                firstLabel: 'Valor mensal: R\$ 30.006,00;',
                secondLabel:
                    'Valor em 25 anos: R\$ 16.046.684,35 (projeção de 4,5% ao ano);',
              ),
              pw.SizedBox(
                height: 4,
              ),
              _buildGradientCard(
                color: blue,
                firstLabel: 'Com energia solar',
                secondLabel:
                    'Valor mensal: R\$ 5175,00 (valor aproximado de tarifas obrigatórias);',
              ),
              pw.SizedBox(
                height: 4,
              ),
              pw.Text('Valor economizado em 25 anos: R\$ 15.993.206,10.'),
              pw.SizedBox(
                height: 4,
              ),
              pw.Text(
                  'Observação: Para clientes grupo A é necessário observar outros custos a exemplo da' +
                      'demanda contratada')
            ],
          ),
        ),
        pw.SizedBox(height: 80),
        pw.Image(
          botoom,
          width: PdfPageFormat.a4.width,
        ),
      ],
    ),
  );
}

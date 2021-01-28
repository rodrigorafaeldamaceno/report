import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

Future<pw.Widget> fifthPage() async {
  final capa = pw.MemoryImage(
    (await rootBundle.load('assets/images/capa_p5.png')).buffer.asUint8List(),
  );

  final botoom = pw.MemoryImage(
    (await rootBundle.load('assets/images/botoom_p5.png')).buffer.asUint8List(),
  );

  return pw.Container(
    height: PdfPageFormat.a4.height,
    child: pw.Column(
      children: [
        pw.Image(
          capa,
          width: PdfPageFormat.a4.width,
        ),
        pw.Container(
          padding: pw.EdgeInsets.only(
            // bottom: PdfPageFormat.a4.marginBottom * 1.5,
            right: PdfPageFormat.a4.marginRight * 0.8,
            left: PdfPageFormat.a4.marginLeft * 0.8,
          ),
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            mainAxisSize: pw.MainAxisSize.max,
            children: [
              pw.SizedBox(height: 20),
              pw.Text(
                '1 - Dados da consultoria',
                style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
              ),
              pw.Text(
                'Empresa de engenharia elétrica com experiência na área de energia renovável com ampla ' +
                    'experiência na área de sistema de geração e distribuição de energia elétrica.',
                textAlign: pw.TextAlign.justify,
              ),
              pw.SizedBox(height: 10),
              pw.Text(
                '2 - Objeto da prestação de serviço',
                style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
              ),
              pw.Text(
                'Projeto e implantação de sistema fotovoltaico de 317,55kWp, inclusive gestão junto à' +
                    'concessionária de energia elétrica para aprovação do projeto do SFV, além de aquisição(compra)' +
                    'e transporte do material necessário para instalação do sistema e assistência técnica gratuita' +
                    'durante 24 meses.',
                textAlign: pw.TextAlign.justify,
              ),
              pw.SizedBox(height: 10),
              pw.Text(
                '3 - Regime de execução',
                style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
              ),
              pw.Text(
                'O processo de instalação do sistema fotovoltaico, aqui proposto, ' +
                    'deverá seguir roteiro com as seguintes fases:',
                textAlign: pw.TextAlign.justify,
              ),
              pw.Container(
                margin: pw.EdgeInsets.only(left: 20),
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    pw.Text(
                      'a) Levantamento e medição em campo das áreas disponíveis para instalação do SFV;',
                      textAlign: pw.TextAlign.justify,
                    ),
                    pw.Text('b) Projeto do SFV de 317,55kWp;'),
                    pw.Text('c) Definição das estruturas de sustentação;'),
                    pw.Text(
                      'd) Apresentação do projeto do SFV à concessionária de energia elétrica para apreciação;',
                      textAlign: pw.TextAlign.justify,
                    ),
                    pw.Text(
                      'e) Gestão junto à concessionária, visando à retificação, se necessário, à aprovação e à' +
                          ' autorização para a instalação do SFV;',
                      textAlign: pw.TextAlign.justify,
                    ),
                    pw.Text(
                      'f) Aquisição e transporte do material e equipamentos necessários;',
                      textAlign: pw.TextAlign.justify,
                    ),
                    pw.Padding(
                      padding: pw.EdgeInsets.only(left: 10),
                      child: pw.Text(
                          'f.1) Materiais e equipamentos entregues pela E-sol:'),
                    ),
                    pw.Text('         Inversor; Cabo fotovoltaico; Conector MC4; Módulos solares; String Box; Condutores' +
                        ' elétricos; Caixa de junção; Kit de estrutura de fixação(telhado/solo); Disjuntores; Terminais;DPS;'),
                  ],
                ),
              ),
              pw.SizedBox(
                height: 213,
              ),
            ],
          ),
        ),
        pw.Image(
          botoom,
          // height: 175,
          width: PdfPageFormat.a4.width,
        ),
      ],
    ),
  );
}

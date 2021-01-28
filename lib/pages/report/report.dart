/*
 * Copyright (C) 2017, David PHAM-VAN <dev.nfet.net@gmail.com>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import 'dart:async';

import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:report/pages/report/fifth_page.dart';
import 'package:report/pages/report/first_page.dart';
import 'package:report/pages/report/fourth_page.dart';
import 'package:report/pages/report/ninth_page.dart';
import 'package:report/pages/report/second_page.dart';
import 'package:report/pages/report/sixth_page.dart';
import 'package:report/pages/report/third_page.dart';

Future<Uint8List> generateResume(PdfPageFormat format) async {
  final pdf = pw.Document();

  final _firstPage = await firstPage();
  final _secondPage = await secondPage();
  final _thirdPage = await thirdPage();
  final _fourthPage = await fourthPage();
  final _fifthPage = await fifthPage();
  final _sixthPage = await sixthPage();
  final _ninthPage = await ninthPage();

  pdf.addPage(pw.MultiPage(
    margin: pw.EdgeInsets.all(0),
    build: (context) => [
      _firstPage,
      _secondPage,
      _thirdPage,
      _fourthPage,
      _fifthPage,
      _sixthPage,
      _ninthPage
    ],
  ));

  return pdf.save();

  // final file = File("example.pdf");
  // await file.writeAsBytes(await pdf.save());
}

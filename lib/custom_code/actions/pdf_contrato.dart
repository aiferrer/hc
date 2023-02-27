// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'dart:io';

Future pdfContrato() async {
  final pdf = pw.Document();
  // final logo = await rootBundle.loadString('assets/images/hc-logo-rojo.png');

  pdf.addPage(pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Column(children: [
          pw.Row(
              mainAxisSize: pw.MainAxisSize.max,
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [pw.Text('LOGO')]),
          pw.Text('Prueba',
              style: const pw.TextStyle(
                // color: PdfColors.cyan
                fontSize: 20,
              )),
          pw.Divider(thickness: 2),
          // pw.Text("Hello World"),
          pw.SizedBox(height: 10),
          pw.Row(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              pw.SizedBox(width: 10),
              pw.Text('Probando el body de esto')
            ],
          ),
          pw.Container(
            width: 100,
            height: 100,
            child: pw.Text('Hello World', style: pw.TextStyle(fontSize: 35)),
          ),
        ]);
      })); // Page

  await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save());
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!

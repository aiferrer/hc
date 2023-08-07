// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:math';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'dart:io';
import 'package:flutter/services.dart' show rootBundle;

Future pdfContrato(
  //Datos Cliente
  String clienteNombre,
  String clienteApellido,
  String? clienteTelefono,
  String clienteDireccion,
  String? clienteEmail,
  String clienteDNI,
//Datos Contrato
  String fecha,
) async {
  final pdf = pw.Document();

  String nombreCompleto =
      'Nombre y Apellido: ' + clienteNombre + ' ' + clienteApellido;
  String telef = 'Teléfono: ' + clienteTelefono!;
  String direccion = 'Dirección: ' + clienteDireccion;
  String email = 'Email: ' + clienteEmail!;
  String dni = 'DNI: ' + clienteDNI;

  String fechaContrato = 'Fecha: ' + fecha.toString();
  String nroComp = 'Nro Comprobante: ' + Random().nextInt(100000).toString();

  // final netLogo = await networkImage(
  //     'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/example-jje21g/assets/d1r41870r2e6/hc-logo-rojo.png');

  // final image = pw.MemoryImage(
  //   File('/assets/hc-logo-rojo.png').readAsBytesSync(),
  // );
  // final image = await rootBundle.load("assets/hc-logo-rojo.png")
  //         .buffer
  //         .asUint8List());

  pdf.addPage(pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Column(children: [
          // pw.Center(child: pw.Image(image)),

          pw.Row(
              mainAxisSize: pw.MainAxisSize.max,
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      // pw.Image(netLogo),
                      pw.Text("[ AQUI VA EL LOGO ] ",
                          style: const pw.TextStyle(
                            fontSize: 14,
                          )),
                    ]),
                pw.Column(children: [
                  pw.Text(
                      "                         |                                     ")
                ]),
                pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text(fechaContrato,
                          style: const pw.TextStyle(
                            fontSize: 10,
                          )),
                      pw.Text(nroComp,
                          style: const pw.TextStyle(
                            fontSize: 10,
                          )),
                    ]),
              ]),
          pw.Divider(thickness: 1),

          pw.Row(
              mainAxisSize: pw.MainAxisSize.max,
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text("( Consignatario )",
                          style: const pw.TextStyle(
                            fontSize: 12,
                          )),
                      pw.Text("HACELO CIRCULAR",
                          style: const pw.TextStyle(
                            fontSize: 18,
                          )),
                      pw.Text("Vende sin hacer nada",
                          style: const pw.TextStyle(
                            fontSize: 14,
                          )),
                    ]),
                pw.Column(
                    children: [pw.Text("                |                 ")]),
                pw.Column(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    children: [
                      pw.Text("( Consignante  )",
                          style: const pw.TextStyle(
                            fontSize: 12,
                          )),
                      pw.Text(nombreCompleto,
                          style: const pw.TextStyle(
                            fontSize: 12,
                          )),
                      pw.Text(direccion,
                          style: const pw.TextStyle(
                            fontSize: 12,
                          )),
                      pw.Text(dni,
                          style: const pw.TextStyle(
                            fontSize: 12,
                          )),
                      pw.Text(telef,
                          style: const pw.TextStyle(
                            fontSize: 12,
                          )),
                      pw.Text(email,
                          style: const pw.TextStyle(
                            fontSize: 12,
                          )),
                    ]),
              ]),

          pw.Divider(thickness: 1),
          pw.Table.fromTextArray(
            data: const <List<String>>[
              [
                'Producto',
                'Cantidad',
                'Precio unidad',
                'Precio total',
                'Comisión'
              ],
              ['Producto 1', '2', '500', '1000', '100'],
              ['Producto 2', '1', '500', '500', '50'],
              ['Producto 3', '3', '1200', '3000', '330'],
            ],
            headerStyle: pw.TextStyle(fontWeight: pw.FontWeight.bold),
            cellAlignment: pw.Alignment.centerLeft,
          ),

          pw.Header(level: 1, text: 'Retiro de mercadería en consignación'),
          pw.Paragraph(
              text:
                  'Entre Hacelo Circular representado por Miguel Angel Kraff, DNI 24764820 domiciliado en La Paz 200 PB, que de ahora en adelante se denominará consignatario y de la otra parte representada por quien se detalla en la pagina anterior y ahora denominaremos consignante, celebran por éste documento un contrato de consignación de mercaderías para su venta '),
          pw.Text("DECLARACIONES: "),
          pw.Paragraph(
              text:
                  'El consignante y el consignatario declaran reconocerse mutuamente con capacidad legal para celebrar el presente contrato. El consignante declara ser dueño de los articulos que se pondrán en consignación.El presente contrato está regido por las siguientes clausulas: '),

          pw.Paragraph(
              text:
                  'Primera: el consignante entrega al consignatario los productos de su propiedad enumerados en la pagina anterior en consignación para su venta, la cual recibe el consignatario en buen estado y funcionamiento.'),

          pw.Paragraph(
              text:
                  'Segunda: El precio de venta será fijado en acuerdo entre ambas partes, al igual que el porcentaje de comisión que cobrará por el consignatario luego de haberse realizado la venta. El mismo tambien se encuentra detallado en el listado  de la anterior pagina...'),

          pw.Paragraph(
              text:
                  'Cuarta: El consignatario se compromete a devolver al consignante la mercancía no vendida en condiciones óptimas.'),

          pw.Paragraph(
              text:
                  'Quinta: Este contrato tiene vigencia de 90 días a partir de la fecha, vencido este plazo y de no haberse realizado la venta, el consignatario tiene la obligaciónde devolverla mercadería al consignante en las mismas condiciones de conservación que fue recibida. Asimismo el consignante tiene la obligaciónde retirarla o recibirla en el plazo máximo de 15 días posteriores al término del contrato.'),

          pw.Paragraph(
              text:
                  'Sexta: El consignatario hará efectiva su comisión por venta al momento que se realice cobro al comprador. El valor restante que corresponde al propietario será entregado por el consignatario durante los 7(siete) días posteriores a la venta.'),

          pw.Paragraph(
              text:
                  'Septima: en caso que alguna de las partes quisiera dar de baja el presente contrato, deberá dar aviso con 72 hs de anticipación para poder acordar la devolución de la mercadería.'),

          pw.Paragraph(
              text:
                  'Octava: Si el consignante decidiera dar de baja éste contrato de manera unilateral debera abonar el 10% del valor establecido para la venta por los gastos ocacionados (logistica, puesta en valor, fotografias, publicaciones, tiempo empleado) si es que ya éstos se han producido. '),

          // pw.Image(pw.MemoryImage(image as Uint8List)

          // pw.Text('Prueba',
          //     style: const pw.TextStyle(
          //       color: PdfColors.cyan,
          //       fontSize: 20,
          //     )),

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
        ]);
      })); // Page

  await Printing.layoutPdf(
      onLayout: (PdfPageFormat format) async => pdf.save());
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!

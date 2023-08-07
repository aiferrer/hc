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

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
Future<String?> modificarEstado(
  List<DocumentReference> lista,
  String? estado,
) async {
  if (estado != null) {
    for (int i = 0; i < lista.length; i++) {
      var item = lista[i];
      item.update(<String, dynamic>{'Estado_Proceso': estado});
      final fechaEstadoCreateData = createFechaEstadoRecordData(
        fechaEstado: getCurrentTimestamp,
        estado: estado,
      );
      await FechaEstadoRecord.createDoc(item).set(fechaEstadoCreateData);
    }
  } else {
    var message = 'Debe seleccionar Estado a modificar';
    return message;
  }
}

import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CarritoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for nombreyapellido widget.
  TextEditingController? nombreyapellidoController;
  String? Function(BuildContext, String?)? nombreyapellidoControllerValidator;
  // State field(s) for direccio widget.
  TextEditingController? direccioController;
  String? Function(BuildContext, String?)? direccioControllerValidator;
  // State field(s) for Telefono widget.
  TextEditingController? telefonoController;
  String? Function(BuildContext, String?)? telefonoControllerValidator;
  // State field(s) for TextField widget.
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  VentaRecord? prodvendidos;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  FacturaRecord? facturacreada;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    nombreyapellidoController?.dispose();
    direccioController?.dispose();
    telefonoController?.dispose();
    textController4?.dispose();
  }

  /// Action blocks are added here.

  Future crearfactura(BuildContext context) async {}

  /// Additional helper methods are added here.
}

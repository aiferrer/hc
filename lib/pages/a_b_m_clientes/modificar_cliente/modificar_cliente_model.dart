import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModificarClienteModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField_nombreCliente widget.
  TextEditingController? textFieldNombreClienteController;
  String? Function(BuildContext, String?)?
      textFieldNombreClienteControllerValidator;
  // State field(s) for TextField_apellidoCliente widget.
  TextEditingController? textFieldApellidoClienteController;
  String? Function(BuildContext, String?)?
      textFieldApellidoClienteControllerValidator;
  // State field(s) for TextField_dni widget.
  TextEditingController? textFieldDniController;
  String? Function(BuildContext, String?)? textFieldDniControllerValidator;
  // State field(s) for TextField_telefonoCliente widget.
  TextEditingController? textFieldTelefonoClienteController;
  String? Function(BuildContext, String?)?
      textFieldTelefonoClienteControllerValidator;
  // State field(s) for TextField_emailCliente widget.
  TextEditingController? textFieldEmailClienteController;
  String? Function(BuildContext, String?)?
      textFieldEmailClienteControllerValidator;
  // State field(s) for TextField_referenciaCliente widget.
  TextEditingController? textFieldReferenciaClienteController;
  String? Function(BuildContext, String?)?
      textFieldReferenciaClienteControllerValidator;
  // State field(s) for TextField_Direccion widget.
  TextEditingController? textFieldDireccionController;
  String? Function(BuildContext, String?)?
      textFieldDireccionControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textFieldNombreClienteController?.dispose();
    textFieldApellidoClienteController?.dispose();
    textFieldDniController?.dispose();
    textFieldTelefonoClienteController?.dispose();
    textFieldEmailClienteController?.dispose();
    textFieldReferenciaClienteController?.dispose();
    textFieldDireccionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

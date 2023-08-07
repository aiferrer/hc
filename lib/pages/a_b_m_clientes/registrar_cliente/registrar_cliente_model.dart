import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistrarClienteModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField_nombreCliente widget.
  TextEditingController? textFieldNombreClienteController;
  String? Function(BuildContext, String?)?
      textFieldNombreClienteControllerValidator;
  String? _textFieldNombreClienteControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El campo nombre es obligatorio';
    }

    if (val.length < 2) {
      return 'Requires at least 2 characters.';
    }
    if (val.length > 20) {
      return 'Maximum 20 characters allowed, currently ${val.length}.';
    }

    return null;
  }

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
  String? _textFieldTelefonoClienteControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'El campo teléfono es obligatorio';
    }

    if (val.length < 10) {
      return 'El número de teléfono debe tener mínimo 10 dígitos';
    }
    if (val.length > 15) {
      return 'El numero de telefono debe tener maximo 15 digitos';
    }

    return null;
  }

  // State field(s) for TextField_emailCliente widget.
  TextEditingController? textFieldEmailClienteController;
  String? Function(BuildContext, String?)?
      textFieldEmailClienteControllerValidator;
  // State field(s) for TextField_referenciaCliente widget.
  TextEditingController? textFieldReferenciaClienteController;
  String? Function(BuildContext, String?)?
      textFieldReferenciaClienteControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    textFieldNombreClienteControllerValidator =
        _textFieldNombreClienteControllerValidator;
    textFieldTelefonoClienteControllerValidator =
        _textFieldTelefonoClienteControllerValidator;
  }

  void dispose() {
    textFieldNombreClienteController?.dispose();
    textFieldApellidoClienteController?.dispose();
    textFieldDniController?.dispose();
    textFieldTelefonoClienteController?.dispose();
    textFieldEmailClienteController?.dispose();
    textFieldReferenciaClienteController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

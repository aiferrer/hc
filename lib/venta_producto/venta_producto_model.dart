import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class VentaProductoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField_buscarCliente widget.
  final textFieldBuscarClienteKey = GlobalKey();
  TextEditingController? textFieldBuscarClienteController;
  String? textFieldBuscarClienteSelectedOption;
  String? Function(BuildContext, String?)?
      textFieldBuscarClienteControllerValidator;
  List<ClienteRecord> simpleSearchResults = [];
  // State field(s) for TextField_telefonoCliente widget.
  TextEditingController? textFieldTelefonoClienteController;
  String? Function(BuildContext, String?)?
      textFieldTelefonoClienteControllerValidator;
  // State field(s) for TextField_emailCliente widget.
  TextEditingController? textFieldEmailClienteController1;
  String? Function(BuildContext, String?)?
      textFieldEmailClienteController1Validator;
  // State field(s) for TextField_emailCliente widget.
  TextEditingController? textFieldEmailClienteController2;
  String? Function(BuildContext, String?)?
      textFieldEmailClienteController2Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField widget.
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textFieldTelefonoClienteController?.dispose();
    textFieldEmailClienteController1?.dispose();
    textFieldEmailClienteController2?.dispose();
    textController5?.dispose();
    textController6?.dispose();
  }

  /// Additional helper methods are added here.

}

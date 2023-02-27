import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_media.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class RegistrarProductoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField_buscarCliente widget.
  final textFieldBuscarClienteKey = GlobalKey();
  TextEditingController? textFieldBuscarClienteController;
  String? textFieldBuscarClienteSelectedOption;
  String? Function(BuildContext, String?)?
      textFieldBuscarClienteControllerValidator;
  String? _textFieldBuscarClienteControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Requerido';
    }
    if (val != textFieldBuscarClienteSelectedOption) {
      return 'Seleccione una opción de la lista';
    }

    return null;
  }

  List<ClienteRecord> simpleSearchResults = [];
  // State field(s) for TextField_descripcionProd widget.
  TextEditingController? textFieldDescripcionProdController;
  String? Function(BuildContext, String?)?
      textFieldDescripcionProdControllerValidator;
  String? _textFieldDescripcionProdControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Requerido';
    }

    return null;
  }

  // State field(s) for TextField_PrecioProd widget.
  TextEditingController? textFieldPrecioProdController;
  String? Function(BuildContext, String?)?
      textFieldPrecioProdControllerValidator;
  // State field(s) for DropDown_monedaProd widget.
  String? dropDownMonedaProdValue;
  // State field(s) for TextField_CantidadProd widget.
  TextEditingController? textFieldCantidadProdController;
  String? Function(BuildContext, String?)?
      textFieldCantidadProdControllerValidator;
  // State field(s) for TextField_codigoProd widget.
  TextEditingController? textFieldCodigoProdController;
  String? Function(BuildContext, String?)?
      textFieldCodigoProdControllerValidator;
  // State field(s) for DropDown_CategoriaProd widget.
  String? dropDownCategoriaProdValue;
  // State field(s) for DropDown_EstadoProd widget.
  String? dropDownEstadoProdValue;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  bool isMediaUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TextField_Ancho widget.
  TextEditingController? textFieldAnchoController;
  String? Function(BuildContext, String?)? textFieldAnchoControllerValidator;
  // State field(s) for TextField_Alto widget.
  TextEditingController? textFieldAltoController;
  String? Function(BuildContext, String?)? textFieldAltoControllerValidator;
  // State field(s) for TextField_Largo widget.
  TextEditingController? textFieldLargoController;
  String? Function(BuildContext, String?)? textFieldLargoControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    textFieldBuscarClienteControllerValidator =
        _textFieldBuscarClienteControllerValidator;
    textFieldDescripcionProdControllerValidator =
        _textFieldDescripcionProdControllerValidator;
  }

  void dispose() {
    textFieldDescripcionProdController?.dispose();
    textFieldPrecioProdController?.dispose();
    textFieldCantidadProdController?.dispose();
    textFieldCodigoProdController?.dispose();
    textFieldAnchoController?.dispose();
    textFieldAltoController?.dispose();
    textFieldLargoController?.dispose();
  }

  /// Additional helper methods are added here.

}

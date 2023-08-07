import '/backend/backend.dart';
import '/components/buscar_prod/buscar_prod_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BuscarProductosModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for BuscarProd component.
  late BuscarProdModel buscarProdModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    buscarProdModel = createModel(context, () => BuscarProdModel());
  }

  void dispose() {
    unfocusNode.dispose();
    buscarProdModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

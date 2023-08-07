import '/backend/backend.dart';
import '/components/buscar_prod_q_r/buscar_prod_q_r_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainBlancoDesplegableModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Model for BuscarProdQR component.
  late BuscarProdQRModel buscarProdQRModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    buscarProdQRModel = createModel(context, () => BuscarProdQRModel());
  }

  void dispose() {
    buscarProdQRModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

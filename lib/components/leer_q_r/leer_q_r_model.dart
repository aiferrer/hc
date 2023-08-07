import '/components/leer_codigo_q_r/leer_codigo_q_r_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LeerQRModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for leerCodigoQR component.
  late LeerCodigoQRModel leerCodigoQRModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    leerCodigoQRModel = createModel(context, () => LeerCodigoQRModel());
  }

  void dispose() {
    unfocusNode.dispose();
    leerCodigoQRModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

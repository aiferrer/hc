import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChangePasswordModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please fill in a new password..';
    }

    return null;
  }

  // State field(s) for Campo_1 widget.
  TextEditingController? campo1Controller;
  String? Function(BuildContext, String?)? campo1ControllerValidator;
  // State field(s) for Campo_2 widget.
  TextEditingController? campo2Controller;
  String? Function(BuildContext, String?)? campo2ControllerValidator;
  // State field(s) for Campo_Resutl widget.
  TextEditingController? campoResutlController;
  String? Function(BuildContext, String?)? campoResutlControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    emailTextControllerValidator = _emailTextControllerValidator;
  }

  void dispose() {
    emailTextController?.dispose();
    campo1Controller?.dispose();
    campo2Controller?.dispose();
    campoResutlController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

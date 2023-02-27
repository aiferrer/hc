import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegisterModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for fullName widget.
  TextEditingController? fullNameController;
  String? Function(BuildContext, String?)? fullNameControllerValidator;
  // State field(s) for TextField_Email widget.
  TextEditingController? textFieldEmailController;
  String? Function(BuildContext, String?)? textFieldEmailControllerValidator;
  // State field(s) for TextField_Pass widget.
  TextEditingController? textFieldPassController;
  late bool textFieldPassVisibility;
  String? Function(BuildContext, String?)? textFieldPassControllerValidator;
  // State field(s) for TextField_ConPass widget.
  TextEditingController? textFieldConPassController;
  late bool textFieldConPassVisibility;
  String? Function(BuildContext, String?)? textFieldConPassControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    textFieldPassVisibility = false;
    textFieldConPassVisibility = false;
  }

  void dispose() {
    fullNameController?.dispose();
    textFieldEmailController?.dispose();
    textFieldPassController?.dispose();
    textFieldConPassController?.dispose();
  }

  /// Additional helper methods are added here.

}

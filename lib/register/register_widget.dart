import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'register_model.dart';
export 'register_model.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({Key? key}) : super(key: key);

  @override
  _RegisterWidgetState createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  late RegisterModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegisterModel());

    _model.fullNameController ??= TextEditingController();
    _model.textFieldEmailController ??= TextEditingController();
    _model.textFieldPassController ??= TextEditingController();
    _model.textFieldConPassController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        color: Color(0xFF010B15),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 15.0, 15.0, 15.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 1.0,
                          height: 130.0,
                          constraints: BoxConstraints(
                            maxWidth: double.infinity,
                            maxHeight: double.infinity,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFF010B15),
                            image: DecorationImage(
                              fit: BoxFit.scaleDown,
                              image: Image.asset(
                                'assets/images/hc-logo-blanco-rojo.png',
                              ).image,
                            ),
                            borderRadius: BorderRadius.circular(0.0),
                            shape: BoxShape.rectangle,
                          ),
                          alignment:
                              AlignmentDirectional(-0.050000000000000044, 0.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 36.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            TextFormField(
                              controller: _model.fullNameController,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Nombre completo aquí...',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).grey,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFD51F27),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFD51F27),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context).white,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lato',
                                    color:
                                        FlutterFlowTheme.of(context).black600,
                                    fontWeight: FontWeight.w300,
                                  ),
                              keyboardType: TextInputType.emailAddress,
                              validator: _model.fullNameControllerValidator
                                  .asValidator(context),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: TextFormField(
                                controller: _model.textFieldEmailController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: 'Correo electrónico aquí...',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).grey,
                                      width: 0.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 0.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFD51F27),
                                      width: 0.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFD51F27),
                                      width: 0.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context).white,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Lato',
                                      color:
                                          FlutterFlowTheme.of(context).black600,
                                      fontWeight: FontWeight.w300,
                                    ),
                                keyboardType: TextInputType.emailAddress,
                                validator: _model
                                    .textFieldEmailControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: TextFormField(
                                controller: _model.textFieldPassController,
                                obscureText: !_model.textFieldPassVisibility,
                                decoration: InputDecoration(
                                  hintText: 'Contraseña...',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).grey,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFD51F27),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFD51F27),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context).white,
                                  suffixIcon: InkWell(
                                    onTap: () => setState(
                                      () => _model.textFieldPassVisibility =
                                          !_model.textFieldPassVisibility,
                                    ),
                                    focusNode: FocusNode(skipTraversal: true),
                                    child: Icon(
                                      _model.textFieldPassVisibility
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      color: Color(0x80FFFFFF),
                                      size: 22.0,
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Lato',
                                      color:
                                          FlutterFlowTheme.of(context).black600,
                                      fontWeight: FontWeight.w300,
                                    ),
                                validator: _model
                                    .textFieldPassControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: TextFormField(
                                controller: _model.textFieldConPassController,
                                obscureText: !_model.textFieldConPassVisibility,
                                decoration: InputDecoration(
                                  hintText: 'Confirmar  Contraseña ...',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).grey,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFD51F27),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFD51F27),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context).white,
                                  suffixIcon: InkWell(
                                    onTap: () => setState(
                                      () => _model.textFieldConPassVisibility =
                                          !_model.textFieldConPassVisibility,
                                    ),
                                    focusNode: FocusNode(skipTraversal: true),
                                    child: Icon(
                                      _model.textFieldConPassVisibility
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      color: Color(0x80FFFFFF),
                                      size: 22.0,
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Lato',
                                      color:
                                          FlutterFlowTheme.of(context).black600,
                                      fontWeight: FontWeight.w300,
                                    ),
                                validator: _model
                                    .textFieldConPassControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  GoRouter.of(context).prepareAuthEvent();
                                  if (_model.textFieldPassController.text !=
                                      _model.textFieldConPassController.text) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Passwords don\'t match!',
                                        ),
                                      ),
                                    );
                                    return;
                                  }

                                  final user = await createAccountWithEmail(
                                    context,
                                    _model.textFieldEmailController.text,
                                    _model.textFieldPassController.text,
                                  );
                                  if (user == null) {
                                    return;
                                  }

                                  final usersCreateData = createUsersRecordData(
                                    displayName: _model.fullNameController.text,
                                  );
                                  await UsersRecord.collection
                                      .doc(user.uid)
                                      .update(usersCreateData);

                                  context.goNamedAuth(
                                      'Main-BlancoDesplegable', mounted);
                                },
                                text: 'CONFIRMAR',
                                options: FFButtonOptions(
                                  width: 200.0,
                                  height: 50.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).darkBG,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .subtitle1
                                      .override(
                                        fontFamily: 'Lato',
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

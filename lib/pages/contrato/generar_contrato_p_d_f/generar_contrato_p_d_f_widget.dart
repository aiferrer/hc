import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'generar_contrato_p_d_f_model.dart';
export 'generar_contrato_p_d_f_model.dart';

class GenerarContratoPDFWidget extends StatefulWidget {
  const GenerarContratoPDFWidget({Key? key}) : super(key: key);

  @override
  _GenerarContratoPDFWidgetState createState() =>
      _GenerarContratoPDFWidgetState();
}

class _GenerarContratoPDFWidgetState extends State<GenerarContratoPDFWidget> {
  late GenerarContratoPDFModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GenerarContratoPDFModel());

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

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).white,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).customColor3,
          automaticallyImplyLeading: true,
          title: Align(
            alignment: AlignmentDirectional(-0.45, 0.0),
            child: Text(
              'Detalles Producto',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).titleMedium.override(
                    fontFamily: 'Lato',
                    fontSize: 24.0,
                    fontWeight: FontWeight.w300,
                  ),
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    await actions.pdfContrato(
                      'Yanisley',
                      'Serrano ',
                      '3513601833',
                      'Salta 476, Villa Carlos Paz',
                      'aferrer48@gmail.com',
                      '19099808',
                      dateTimeFormat(
                        'd/M/y',
                        dateTimeFromSecondsSinceEpoch(
                            getCurrentTimestamp.secondsSinceEpoch),
                        locale: FFLocalizations.of(context).languageCode,
                      ),
                    );
                  },
                  text: 'Generar Contrato',
                  icon: FaIcon(
                    FontAwesomeIcons.solidFilePdf,
                    color: FlutterFlowTheme.of(context).textColor,
                  ),
                  options: FFButtonOptions(
                    width: 200.0,
                    height: 60.0,
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Lato',
                          color: FlutterFlowTheme.of(context).customColor4,
                        ),
                    elevation: 2.0,
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).grayIcon,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
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

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
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GenerarContratoPDFModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).customColor3,
        automaticallyImplyLeading: true,
        title: Align(
          alignment: AlignmentDirectional(-0.45, 0.0),
          child: Text(
            'Detalles Producto',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).subtitle1.override(
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
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 30.0, 10.0, 0.0),
                      child: Text(
                        'Retiro ',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lato',
                              fontSize: 30.0,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    await actions.pdfContrato();
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
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Lato',
                          color: FlutterFlowTheme.of(context).customColor4,
                        ),
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

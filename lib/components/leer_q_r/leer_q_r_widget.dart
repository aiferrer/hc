import '/components/leer_codigo_q_r/leer_codigo_q_r_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'leer_q_r_model.dart';
export 'leer_q_r_model.dart';

class LeerQRWidget extends StatefulWidget {
  const LeerQRWidget({Key? key}) : super(key: key);

  @override
  _LeerQRWidgetState createState() => _LeerQRWidgetState();
}

class _LeerQRWidgetState extends State<LeerQRWidget> {
  late LeerQRModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LeerQRModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          title: Text(
            'Widget QR',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Lato',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBtnText,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 160.0,
                  height: 160.0,
                  child: custom_widgets.QRCode(
                    width: 160.0,
                    height: 160.0,
                    qrSize: 500.0,
                    qrData: 'Hello Horld',
                    qrVersion: 5,
                  ),
                ),
                wrapWithModel(
                  model: _model.leerCodigoQRModel,
                  updateCallback: () => setState(() {}),
                  child: LeerCodigoQRWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

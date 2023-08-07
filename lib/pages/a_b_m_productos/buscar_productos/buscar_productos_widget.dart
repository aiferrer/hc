import '/backend/backend.dart';
import '/components/buscar_prod/buscar_prod_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'buscar_productos_model.dart';
export 'buscar_productos_model.dart';

class BuscarProductosWidget extends StatefulWidget {
  const BuscarProductosWidget({Key? key}) : super(key: key);

  @override
  _BuscarProductosWidgetState createState() => _BuscarProductosWidgetState();
}

class _BuscarProductosWidgetState extends State<BuscarProductosWidget> {
  late BuscarProductosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BuscarProductosModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().searchActive = false;
      });
    });

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

    return StreamBuilder<List<ProductoRecord>>(
      stream: queryProductoRecord(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).white,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).secondary,
                  ),
                ),
              ),
            ),
          );
        }
        List<ProductoRecord> buscarProductosProductoRecordList = snapshot.data!;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).white,
            appBar: AppBar(
              backgroundColor: Color(0xFFD51F27),
              automaticallyImplyLeading: true,
              title: Text(
                'Buscar Producto',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'Lato',
                      fontSize: 24.0,
                      fontWeight: FontWeight.w300,
                    ),
              ),
              actions: [],
              centerTitle: true,
              elevation: 4.0,
            ),
            body: wrapWithModel(
              model: _model.buscarProdModel,
              updateCallback: () => setState(() {}),
              child: BuscarProdWidget(
                parameter2: buscarProductosProductoRecordList,
              ),
            ),
          ),
        );
      },
    );
  }
}

import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'detalle_seguimiento_model.dart';
export 'detalle_seguimiento_model.dart';

class DetalleSeguimientoWidget extends StatefulWidget {
  const DetalleSeguimientoWidget({
    Key? key,
    this.productoaseguir,
  }) : super(key: key);

  final DocumentReference? productoaseguir;

  @override
  _DetalleSeguimientoWidgetState createState() =>
      _DetalleSeguimientoWidgetState();
}

class _DetalleSeguimientoWidgetState extends State<DetalleSeguimientoWidget> {
  late DetalleSeguimientoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetalleSeguimientoModel());

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

    return StreamBuilder<ProductoRecord>(
      stream: ProductoRecord.getDocument(widget.productoaseguir!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).secondaryColor,
              ),
            ),
          );
        }
        final detalleSeguimientoProductoRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).customColor3,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: FlutterFlowTheme.of(context).white,
                size: 30.0,
              ),
              onPressed: () async {
                context.pop();
              },
            ),
            title: Text(
              ' Seguimiento Productos',
              style: FlutterFlowTheme.of(context).subtitle1.override(
                    fontFamily: 'Lato',
                    fontSize: 24.0,
                    fontWeight: FontWeight.w300,
                  ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 2.0,
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            30.0, 30.0, 30.0, 30.0),
                        child: Text(
                          detalleSeguimientoProductoRecord.descripcion!,
                          style: FlutterFlowTheme.of(context).title2.override(
                                fontFamily: 'Lato',
                                color: FlutterFlowTheme.of(context).darkBG,
                              ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        StreamBuilder<List<FechaEstadoRecord>>(
                          stream: queryFechaEstadoRecord(
                            parent: widget.productoaseguir,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryColor,
                                  ),
                                ),
                              );
                            }
                            List<FechaEstadoRecord>
                                containerFechaEstadoRecordList = snapshot.data!;
                            return Container(
                              width: 352.0,
                              height: 509.6,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: Builder(
                                builder: (context) {
                                  final fechas = containerFechaEstadoRecordList
                                      .map((e) => e)
                                      .toList();
                                  return DataTable2(
                                    columns: [
                                      DataColumn2(
                                        label: DefaultTextStyle.merge(
                                          softWrap: true,
                                          child: Text(
                                            'Fecha',
                                            style: FlutterFlowTheme.of(context)
                                                .title2
                                                .override(
                                                  fontFamily: 'Lato',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .darkBG,
                                                ),
                                          ),
                                        ),
                                      ),
                                      DataColumn2(
                                        label: DefaultTextStyle.merge(
                                          softWrap: true,
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.9, 0.0),
                                            child: Text(
                                              'Estado',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title2
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .darkBG,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                    rows: fechas
                                        .mapIndexed((fechasIndex, fechasItem) =>
                                            [
                                              Text(
                                                fechasItem.fechaEstado!
                                                    .toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Lato',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                        ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.35, 0.0),
                                                child: Text(
                                                  fechasItem.estado!,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Lato',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                      ),
                                                ),
                                              ),
                                            ].map((c) => DataCell(c)).toList())
                                        .map((e) => DataRow(cells: e))
                                        .toList(),
                                    headingRowColor: MaterialStateProperty.all(
                                      FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                    ),
                                    headingRowHeight: 56.0,
                                    dataRowColor: MaterialStateProperty.all(
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                    dataRowHeight: 56.0,
                                    border: TableBorder(
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    dividerThickness: 1.0,
                                    showBottomBorder: false,
                                    minWidth: 49.0,
                                  );
                                },
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

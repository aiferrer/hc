import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'detalle_producto_model.dart';
export 'detalle_producto_model.dart';

class DetalleProductoWidget extends StatefulWidget {
  const DetalleProductoWidget({
    Key? key,
    this.idProducto,
  }) : super(key: key);

  final DocumentReference? idProducto;

  @override
  _DetalleProductoWidgetState createState() => _DetalleProductoWidgetState();
}

class _DetalleProductoWidgetState extends State<DetalleProductoWidget> {
  late DetalleProductoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetalleProductoModel());

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
      stream: ProductoRecord.getDocument(widget.idProducto!),
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
        final detalleProductoProductoRecord = snapshot.data!;
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: InkWell(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  PageTransition(
                                    type: PageTransitionType.fade,
                                    child: FlutterFlowExpandedImageView(
                                      image: Image.network(
                                        valueOrDefault<String>(
                                          detalleProductoProductoRecord
                                              .fotoOriginal,
                                          'https://lirp.cdn-website.com/343f0986cb9d4bc5bc00d8a4a79b4156/dms3rep/multi/opt/1274512-placeholder-640w.png',
                                        ),
                                        fit: BoxFit.contain,
                                      ),
                                      allowRotation: false,
                                      tag: valueOrDefault<String>(
                                        detalleProductoProductoRecord
                                            .fotoOriginal,
                                        'https://lirp.cdn-website.com/343f0986cb9d4bc5bc00d8a4a79b4156/dms3rep/multi/opt/1274512-placeholder-640w.png',
                                      ),
                                      useHeroAnimation: true,
                                    ),
                                  ),
                                );
                              },
                              child: Hero(
                                tag: valueOrDefault<String>(
                                  detalleProductoProductoRecord.fotoOriginal,
                                  'https://lirp.cdn-website.com/343f0986cb9d4bc5bc00d8a4a79b4156/dms3rep/multi/opt/1274512-placeholder-640w.png',
                                ),
                                transitionOnUserGestures: true,
                                child: Image.network(
                                  valueOrDefault<String>(
                                    detalleProductoProductoRecord.fotoOriginal,
                                    'https://lirp.cdn-website.com/343f0986cb9d4bc5bc00d8a4a79b4156/dms3rep/multi/opt/1274512-placeholder-640w.png',
                                  ),
                                  width: 258.4,
                                  height: 184.8,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 5.0, 5.0, 5.0),
                            child: Text(
                              'Descripción: ${detalleProductoProductoRecord.descripcion}',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 5.0, 5.0, 5.0),
                            child: Text(
                              'Precio: ${formatNumber(
                                detalleProductoProductoRecord.precio,
                                formatType: FormatType.decimal,
                                decimalType: DecimalType.automatic,
                                currency: '\$ ',
                              )}',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 5.0, 5.0, 5.0),
                            child: Text(
                              'Cantidad: ${detalleProductoProductoRecord.cantidad?.toString()}',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 5.0, 5.0, 5.0),
                            child: Text(
                              'Categoría: ${detalleProductoProductoRecord.categoria}',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 5.0, 5.0, 5.0),
                            child: Text(
                              'Estado del Producto: ${detalleProductoProductoRecord.estadoProducto}',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 5.0, 5.0, 5.0),
                            child: Text(
                              'Código: ${detalleProductoProductoRecord.codigoProducto}',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 5.0, 5.0, 5.0),
                            child: Text(
                              'Medidas:',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Alto: ${detalleProductoProductoRecord.alto?.toString()}',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Ancho: ${detalleProductoProductoRecord.ancho?.toString()}',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Prof.: ${detalleProductoProductoRecord.profundidad?.toString()}',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 80.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Enviar',
                      icon: Icon(
                        Icons.send,
                        color: FlutterFlowTheme.of(context).white,
                        size: 15.0,
                      ),
                      options: FFButtonOptions(
                        width: 300.0,
                        height: 40.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).customColor3,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle1.override(
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w300,
                                ),
                        borderSide: BorderSide(
                          color: Color(0x00DC191B),
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
      },
    );
  }
}

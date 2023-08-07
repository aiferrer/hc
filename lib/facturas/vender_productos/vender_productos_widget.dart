import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'vender_productos_model.dart';
export 'vender_productos_model.dart';

class VenderProductosWidget extends StatefulWidget {
  const VenderProductosWidget({
    Key? key,
    this.idCliente,
  }) : super(key: key);

  final DocumentReference? idCliente;

  @override
  _VenderProductosWidgetState createState() => _VenderProductosWidgetState();
}

class _VenderProductosWidgetState extends State<VenderProductosWidget> {
  late VenderProductosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VenderProductosModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().searchActive = false;
      });
    });

    _model.textFieldBuscarProductoController ??= TextEditingController();
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
      stream: queryProductoRecord(
        queryBuilder: (productoRecord) =>
            productoRecord.where('Estado_Proceso', isNotEqualTo: 'facturar'),
      ),
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
        List<ProductoRecord> venderProductosProductoRecordList = snapshot.data!;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).white,
            appBar: AppBar(
              backgroundColor: Color(0xFFD51F27),
              automaticallyImplyLeading: true,
              title: Text(
                'Venta  de  Productos',
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
            body: StreamBuilder<List<VentaRecord>>(
              stream: queryVentaRecord(
                queryBuilder: (ventaRecord) => ventaRecord.where('Id_Cliente',
                    isEqualTo: widget.idCliente),
                singleRecord: true,
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          FlutterFlowTheme.of(context).secondary,
                        ),
                      ),
                    ),
                  );
                }
                List<VentaRecord> columnVentaRecordList = snapshot.data!;
                // Return an empty Container when the item does not exist.
                if (snapshot.data!.isEmpty) {
                  return Container();
                }
                final columnVentaRecord = columnVentaRecordList.isNotEmpty
                    ? columnVentaRecordList.first
                    : null;
                return SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 8.0, 16.0, 12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 30.0, 0.0, 0.0),
                                child: Autocomplete<String>(
                                  initialValue: TextEditingValue(),
                                  optionsBuilder: (textEditingValue) {
                                    if (textEditingValue.text == '') {
                                      return const Iterable<String>.empty();
                                    }
                                    return venderProductosProductoRecordList
                                        .map((e) => e.descripcion)
                                        .toList()
                                        .where((option) {
                                      final lowercaseOption =
                                          option.toLowerCase();
                                      return lowercaseOption.contains(
                                          textEditingValue.text.toLowerCase());
                                    });
                                  },
                                  optionsViewBuilder:
                                      (context, onSelected, options) {
                                    return AutocompleteOptionsList(
                                      textFieldKey:
                                          _model.textFieldBuscarProductoKey,
                                      textController: _model
                                          .textFieldBuscarProductoController!,
                                      options: options.toList(),
                                      onSelected: onSelected,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                      textHighlightStyle: TextStyle(),
                                      elevation: 4.0,
                                      optionBackgroundColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                      optionHighlightColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                      maxHeight: 200.0,
                                    );
                                  },
                                  onSelected: (String selection) {
                                    setState(() => _model
                                            .textFieldBuscarProductoSelectedOption =
                                        selection);
                                    FocusScope.of(context).unfocus();
                                  },
                                  fieldViewBuilder: (
                                    context,
                                    textEditingController,
                                    focusNode,
                                    onEditingComplete,
                                  ) {
                                    _model.textFieldBuscarProductoController =
                                        textEditingController;
                                    return TextFormField(
                                      key: _model.textFieldBuscarProductoKey,
                                      controller: textEditingController,
                                      focusNode: focusNode,
                                      onEditingComplete: onEditingComplete,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.textFieldBuscarProductoController',
                                        Duration(milliseconds: 2000),
                                        () async {
                                          setState(() {
                                            _model.simpleSearchResults =
                                                TextSearch(
                                              venderProductosProductoRecordList
                                                  .map(
                                                    (record) => TextSearchItem(
                                                        record, [
                                                      record.descripcion!,
                                                      record.idCliente!,
                                                      record.codigoProducto!
                                                    ]),
                                                  )
                                                  .toList(),
                                            )
                                                    .search(_model
                                                        .textFieldBuscarProductoController
                                                        .text)
                                                    .map((r) => r.object)
                                                    .toList();
                                            ;
                                          });
                                          setState(() {
                                            FFAppState().searchActive = true;
                                          });
                                        },
                                      ),
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText: 'Buscar aquí...',
                                        labelStyle: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily: 'Outfit',
                                              color: Color(0xFF57636C),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                        prefixIcon: Icon(
                                          Icons.search,
                                          color: FlutterFlowTheme.of(context)
                                              .grayIcon,
                                          size: 18.0,
                                        ),
                                        suffixIcon: _model
                                                .textFieldBuscarProductoController!
                                                .text
                                                .isNotEmpty
                                            ? InkWell(
                                                onTap: () async {
                                                  _model
                                                      .textFieldBuscarProductoController
                                                      ?.clear();
                                                  setState(() {
                                                    _model.simpleSearchResults =
                                                        TextSearch(
                                                      venderProductosProductoRecordList
                                                          .map(
                                                            (record) =>
                                                                TextSearchItem(
                                                                    record, [
                                                              record
                                                                  .descripcion!,
                                                              record.idCliente!,
                                                              record
                                                                  .codigoProducto!
                                                            ]),
                                                          )
                                                          .toList(),
                                                    )
                                                            .search(_model
                                                                .textFieldBuscarProductoController
                                                                .text)
                                                            .map(
                                                                (r) => r.object)
                                                            .toList();
                                                    ;
                                                  });
                                                  setState(() {
                                                    FFAppState().searchActive =
                                                        true;
                                                  });
                                                  setState(() {});
                                                },
                                                child: Icon(
                                                  Icons.clear,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .darkBG,
                                                  size: 22.0,
                                                ),
                                              )
                                            : null,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF1D2429),
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      maxLines: null,
                                      validator: _model
                                          .textFieldBuscarProductoControllerValidator
                                          .asValidator(context),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      if (!FFAppState().searchActive)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 44.0),
                          child: Builder(
                            builder: (context) {
                              final productosNoSearch =
                                  venderProductosProductoRecordList.toList();
                              return ListView.builder(
                                padding: EdgeInsets.zero,
                                primary: false,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount: productosNoSearch.length,
                                itemBuilder: (context, productosNoSearchIndex) {
                                  final productosNoSearchItem =
                                      productosNoSearch[productosNoSearchIndex];
                                  return Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 4.0, 16.0, 8.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          'Detalle_Producto',
                                          queryParameters: {
                                            'idProducto': serializeParam(
                                              productosNoSearchItem.reference,
                                              ParamType.DocumentReference,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        height: 70.0,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              blurRadius: 4.0,
                                              color: Color(0x32000000),
                                              offset: Offset(0.0, 2.0),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 8.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 0.0, 5.0),
                                                child: Image.network(
                                                  valueOrDefault<String>(
                                                    productosNoSearchItem
                                                        .fotoOriginal,
                                                    'https://lirp.cdn-website.com/343f0986cb9d4bc5bc00d8a4a79b4156/dms3rep/multi/opt/1274512-placeholder-640w.png',
                                                  ),
                                                  width: 82.1,
                                                  height: 100.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        productosNoSearchItem
                                                            .descripcion,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Outfit',
                                                              color: Color(
                                                                  0xFF1D2429),
                                                              fontSize: 14.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            productosNoSearchItem
                                                                .precio
                                                                .toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Outfit',
                                                                  color: Color(
                                                                      0xFF1D2429),
                                                                  fontSize:
                                                                      14.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'Cant.: ${productosNoSearchItem.cantidad.toString()}',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 30.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 50.0,
                                                    icon: Icon(
                                                      Icons.monetization_on,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBlack,
                                                      size: 30.0,
                                                    ),
                                                    onPressed: () async {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'Producto Agregado a la Factura',
                                                            style: TextStyle(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                            ),
                                                          ),
                                                          duration: Duration(
                                                              milliseconds:
                                                                  4000),
                                                          backgroundColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .grayIcon,
                                                        ),
                                                      );

                                                      await productosNoSearchItem
                                                          .reference
                                                          .update(
                                                              createProductoRecordData(
                                                        estadoProceso:
                                                            'facturar',
                                                        comprador:
                                                            widget.idCliente,
                                                      ));
                                                      if (columnVentaRecord !=
                                                          null) {
                                                        var productosSeleccionadosCarritoRecordReference1 =
                                                            ProductosSeleccionadosCarritoRecord
                                                                .collection
                                                                .doc();
                                                        await productosSeleccionadosCarritoRecordReference1
                                                            .set(
                                                                createProductosSeleccionadosCarritoRecordData(
                                                          descripcion:
                                                              productosNoSearchItem
                                                                  .descripcion,
                                                          cantidad:
                                                              productosNoSearchItem
                                                                  .cantidad,
                                                          precio:
                                                              productosNoSearchItem
                                                                  .precio,
                                                          idCliente:
                                                              widget.idCliente,
                                                          idProducto:
                                                              productosNoSearchItem
                                                                  .reference,
                                                        ));
                                                        _model.prodSeleccExist =
                                                            ProductosSeleccionadosCarritoRecord
                                                                .getDocumentFromData(
                                                                    createProductosSeleccionadosCarritoRecordData(
                                                                      descripcion:
                                                                          productosNoSearchItem
                                                                              .descripcion,
                                                                      cantidad:
                                                                          productosNoSearchItem
                                                                              .cantidad,
                                                                      precio: productosNoSearchItem
                                                                          .precio,
                                                                      idCliente:
                                                                          widget
                                                                              .idCliente,
                                                                      idProducto:
                                                                          productosNoSearchItem
                                                                              .reference,
                                                                    ),
                                                                    productosSeleccionadosCarritoRecordReference1);

                                                        await columnVentaRecord!
                                                            .reference
                                                            .update({
                                                          'prod_Seleccionados_List':
                                                              FieldValue
                                                                  .arrayUnion([
                                                            _model
                                                                .prodSeleccExist
                                                                ?.reference
                                                          ]),
                                                        });
                                                      } else {
                                                        var productosSeleccionadosCarritoRecordReference2 =
                                                            ProductosSeleccionadosCarritoRecord
                                                                .collection
                                                                .doc();
                                                        await productosSeleccionadosCarritoRecordReference2
                                                            .set(
                                                                createProductosSeleccionadosCarritoRecordData(
                                                          descripcion:
                                                              productosNoSearchItem
                                                                  .descripcion,
                                                          cantidad:
                                                              productosNoSearchItem
                                                                  .cantidad,
                                                          precio:
                                                              productosNoSearchItem
                                                                  .precio,
                                                          idCliente:
                                                              widget.idCliente,
                                                          idProducto:
                                                              productosNoSearchItem
                                                                  .reference,
                                                        ));
                                                        _model.prodSeleccNuevo =
                                                            ProductosSeleccionadosCarritoRecord
                                                                .getDocumentFromData(
                                                                    createProductosSeleccionadosCarritoRecordData(
                                                                      descripcion:
                                                                          productosNoSearchItem
                                                                              .descripcion,
                                                                      cantidad:
                                                                          productosNoSearchItem
                                                                              .cantidad,
                                                                      precio: productosNoSearchItem
                                                                          .precio,
                                                                      idCliente:
                                                                          widget
                                                                              .idCliente,
                                                                      idProducto:
                                                                          productosNoSearchItem
                                                                              .reference,
                                                                    ),
                                                                    productosSeleccionadosCarritoRecordReference2);

                                                        var ventaRecordReference =
                                                            VentaRecord
                                                                .collection
                                                                .doc();
                                                        await ventaRecordReference
                                                            .set({
                                                          ...createVentaRecordData(
                                                            idCliente: _model
                                                                .prodSeleccNuevo
                                                                ?.idCliente,
                                                            idProducto: _model
                                                                .prodSeleccNuevo
                                                                ?.idProducto,
                                                            descripcion: _model
                                                                .prodSeleccNuevo
                                                                ?.descripcion,
                                                          ),
                                                          'prod_Seleccionados_List':
                                                              [
                                                            _model
                                                                .prodSeleccNuevo
                                                                ?.reference
                                                          ],
                                                        });
                                                        _model.ventaCreada =
                                                            VentaRecord
                                                                .getDocumentFromData({
                                                          ...createVentaRecordData(
                                                            idCliente: _model
                                                                .prodSeleccNuevo
                                                                ?.idCliente,
                                                            idProducto: _model
                                                                .prodSeleccNuevo
                                                                ?.idProducto,
                                                            descripcion: _model
                                                                .prodSeleccNuevo
                                                                ?.descripcion,
                                                          ),
                                                          'prod_Seleccionados_List':
                                                              [
                                                            _model
                                                                .prodSeleccNuevo
                                                                ?.reference
                                                          ],
                                                        }, ventaRecordReference);
                                                      }

                                                      setState(() {});
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      if (FFAppState().searchActive)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 44.0),
                          child: Builder(
                            builder: (context) {
                              final productosNoSearch =
                                  _model.simpleSearchResults.toList();
                              return InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'Carrito',
                                    queryParameters: {
                                      'idCliente': serializeParam(
                                        widget.idCliente,
                                        ParamType.DocumentReference,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: ListView.builder(
                                  padding: EdgeInsets.zero,
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: productosNoSearch.length,
                                  itemBuilder:
                                      (context, productosNoSearchIndex) {
                                    final productosNoSearchItem =
                                        productosNoSearch[
                                            productosNoSearchIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 4.0, 16.0, 8.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                            'Detalle_Producto',
                                            queryParameters: {
                                              'idProducto': serializeParam(
                                                productosNoSearchItem.reference,
                                                ParamType.DocumentReference,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        child: Container(
                                          width: double.infinity,
                                          height: 70.0,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 4.0,
                                                color: Color(0x32000000),
                                                offset: Offset(0.0, 2.0),
                                              )
                                            ],
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 8.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 5.0, 0.0, 5.0),
                                                  child: Image.network(
                                                    valueOrDefault<String>(
                                                      productosNoSearchItem
                                                          .fotoOriginal,
                                                      'https://lirp.cdn-website.com/343f0986cb9d4bc5bc00d8a4a79b4156/dms3rep/multi/opt/1274512-placeholder-640w.png',
                                                    ),
                                                    width: 82.1,
                                                    height: 100.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          productosNoSearchItem
                                                              .descripcion,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Outfit',
                                                                color: Color(
                                                                    0xFF1D2429),
                                                                fontSize: 14.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                              ),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                              productosNoSearchItem
                                                                  .precio
                                                                  .toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Outfit',
                                                                    color: Color(
                                                                        0xFF1D2429),
                                                                    fontSize:
                                                                        14.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    FlutterFlowIconButton(
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderRadius: 30.0,
                                                      borderWidth: 1.0,
                                                      buttonSize: 50.0,
                                                      icon: Icon(
                                                        Icons.monetization_on,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBlack,
                                                        size: 30.0,
                                                      ),
                                                      onPressed: () async {
                                                        await ProductosSeleccionadosCarritoRecord
                                                            .collection
                                                            .doc()
                                                            .set(
                                                                createProductosSeleccionadosCarritoRecordData(
                                                              descripcion:
                                                                  productosNoSearchItem
                                                                      .descripcion,
                                                              cantidad:
                                                                  productosNoSearchItem
                                                                      .cantidad,
                                                              precio:
                                                                  productosNoSearchItem
                                                                      .precio,
                                                              idProducto:
                                                                  productosNoSearchItem
                                                                      .reference,
                                                              idCliente: widget
                                                                  .idCliente,
                                                            ));
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              'Producto Agregado a la Factura',
                                                              style: TextStyle(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                              ),
                                                            ),
                                                            duration: Duration(
                                                                milliseconds:
                                                                    4000),
                                                            backgroundColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .grayIcon,
                                                          ),
                                                        );

                                                        await productosNoSearchItem
                                                            .reference
                                                            .update(
                                                                createProductoRecordData(
                                                          estadoProceso:
                                                              'facturar',
                                                        ));
                                                      },
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            context.pushNamed(
                              'Carrito',
                              queryParameters: {
                                'idCliente': serializeParam(
                                  widget.idCliente,
                                  ParamType.DocumentReference,
                                ),
                              }.withoutNulls,
                            );
                          },
                          text: 'Ir al carrito\n',
                          options: FFButtonOptions(
                            width: 130.0,
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).customColor3,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Lato',
                                  color: Colors.white,
                                ),
                            elevation: 2.0,
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
                );
              },
            ),
          ),
        );
      },
    );
  }
}

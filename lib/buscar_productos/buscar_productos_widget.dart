import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
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
  final _unfocusNode = FocusNode();

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

    _model.textFieldBuscarProductoController ??= TextEditingController();
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

    return StreamBuilder<List<ProductoRecord>>(
      stream: queryProductoRecord(),
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
        List<ProductoRecord> buscarProductosProductoRecordList = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: Color(0xFFF1F4F8),
          appBar: AppBar(
            backgroundColor: Color(0xFFD51F27),
            automaticallyImplyLeading: true,
            title: Text(
              'Buscar Producto',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).subtitle1.override(
                    fontFamily: 'Lato',
                    fontSize: 24.0,
                    fontWeight: FontWeight.w300,
                  ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 4.0,
          ),
          body: GestureDetector(
            onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 12.0),
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
                                return buscarProductosProductoRecordList
                                    .map((e) => e.descripcion)
                                    .withoutNulls
                                    .toList()
                                    .toList()
                                    .where((option) {
                                  final lowercaseOption = option.toLowerCase();
                                  return lowercaseOption.contains(
                                      textEditingValue.text.toLowerCase());
                                });
                              },
                              optionsViewBuilder:
                                  (context, onSelected, options) {
                                return AutocompleteOptionsList(
                                  textFieldKey:
                                      _model.textFieldBuscarProductoKey,
                                  textController:
                                      _model.textFieldBuscarProductoController!,
                                  options: options.toList(),
                                  onSelected: onSelected,
                                  textStyle:
                                      FlutterFlowTheme.of(context).bodyText1,
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
                                        _model.simpleSearchResults = TextSearch(
                                          buscarProductosProductoRecordList
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
                                        .bodyText2
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
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                    prefixIcon: Icon(
                                      Icons.search,
                                      color:
                                          FlutterFlowTheme.of(context).grayIcon,
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
                                                  buscarProductosProductoRecordList
                                                      .map(
                                                        (record) =>
                                                            TextSearchItem(
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
                                              });
                                              setState(() {
                                                FFAppState().searchActive =
                                                    true;
                                              });
                                              setState(() {});
                                            },
                                            child: Icon(
                                              Icons.clear,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .darkBG,
                                              size: 22.0,
                                            ),
                                          )
                                        : null,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 30.0, 0.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 44.0,
                            icon: Icon(
                              Icons.add_circle_sharp,
                              color: FlutterFlowTheme.of(context).primaryBlack,
                              size: 30.0,
                            ),
                            onPressed: () async {
                              context.pushNamed(
                                'Registrar_Producto',
                                queryParams: {
                                  'idProducto': serializeParam(
                                    null,
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (!FFAppState().searchActive)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 44.0),
                      child: Builder(
                        builder: (context) {
                          final productosNoSearch =
                              buscarProductosProductoRecordList.toList();
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
                                  onTap: () async {
                                    context.pushNamed(
                                      'Detalle_Producto',
                                      queryParams: {
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
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
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
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    productosNoSearchItem
                                                        .descripcion!,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              Color(0xFF1D2429),
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        productosNoSearchItem
                                                            .precio!
                                                            .toString(),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyText1
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
                                                borderColor: Colors.transparent,
                                                borderRadius: 30.0,
                                                borderWidth: 1.0,
                                                buttonSize: 50.0,
                                                icon: FaIcon(
                                                  FontAwesomeIcons.solidEdit,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBlack,
                                                  size: 25.0,
                                                ),
                                                onPressed: () async {
                                                  context.pushNamed(
                                                    'Modificar_Producto',
                                                    queryParams: {
                                                      'idProducto':
                                                          serializeParam(
                                                        productosNoSearchItem
                                                            .reference,
                                                        ParamType
                                                            .DocumentReference,
                                                      ),
                                                    }.withoutNulls,
                                                  );
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
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 44.0),
                      child: Builder(
                        builder: (context) {
                          final productosNoSearch =
                              _model.simpleSearchResults.toList();
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
                                  onTap: () async {
                                    context.pushNamed(
                                      'Detalle_Producto',
                                      queryParams: {
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
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
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
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    productosNoSearchItem
                                                        .descripcion!,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              Color(0xFF1D2429),
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        productosNoSearchItem
                                                            .precio!
                                                            .toString(),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyText1
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
                                                borderColor: Colors.transparent,
                                                borderRadius: 30.0,
                                                borderWidth: 1.0,
                                                buttonSize: 50.0,
                                                icon: FaIcon(
                                                  FontAwesomeIcons.solidEdit,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBlack,
                                                  size: 25.0,
                                                ),
                                                onPressed: () async {
                                                  context.pushNamed(
                                                    'Modificar_Producto',
                                                    queryParams: {
                                                      'idProducto':
                                                          serializeParam(
                                                        productosNoSearchItem
                                                            .reference,
                                                        ParamType
                                                            .DocumentReference,
                                                      ),
                                                    }.withoutNulls,
                                                  );
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
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

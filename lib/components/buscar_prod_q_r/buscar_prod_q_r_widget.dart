import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'buscar_prod_q_r_model.dart';
export 'buscar_prod_q_r_model.dart';

class BuscarProdQRWidget extends StatefulWidget {
  const BuscarProdQRWidget({
    Key? key,
    this.parameter1,
    this.parameter2,
  }) : super(key: key);

  final List<String>? parameter1;
  final List<ProductoRecord>? parameter2;

  @override
  _BuscarProdQRWidgetState createState() => _BuscarProdQRWidgetState();
}

class _BuscarProdQRWidgetState extends State<BuscarProdQRWidget> {
  late BuscarProdQRModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BuscarProdQRModel());

    _model.textFieldBuscarProductoController ??= TextEditingController(
        text: valueOrDefault<String>(
      _model.barcodeValue,
      '0000',
    ));
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 12.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                    child: Autocomplete<String>(
                      initialValue: TextEditingValue(
                          text: valueOrDefault<String>(
                        _model.barcodeValue,
                        '0000',
                      )),
                      optionsBuilder: (textEditingValue) {
                        if (textEditingValue.text == '') {
                          return const Iterable<String>.empty();
                        }
                        return widget.parameter1!.where((option) {
                          final lowercaseOption = option.toLowerCase();
                          return lowercaseOption
                              .contains(textEditingValue.text.toLowerCase());
                        });
                      },
                      optionsViewBuilder: (context, onSelected, options) {
                        return AutocompleteOptionsList(
                          textFieldKey: _model.textFieldBuscarProductoKey,
                          textController:
                              _model.textFieldBuscarProductoController!,
                          options: options.toList(),
                          onSelected: onSelected,
                          textStyle: FlutterFlowTheme.of(context).bodyMedium,
                          textHighlightStyle: TextStyle(),
                          elevation: 4.0,
                          optionBackgroundColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          optionHighlightColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          maxHeight: 200.0,
                        );
                      },
                      onSelected: (String selection) {
                        setState(() => _model
                            .textFieldBuscarProductoSelectedOption = selection);
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
                                  widget.parameter2!
                                      .map(
                                        (record) => TextSearchItem(record, [
                                          record.descripcion!,
                                          record.idCliente!,
                                          record.codigoProducto!
                                        ]),
                                      )
                                      .toList(),
                                )
                                    .search(_model
                                        .textFieldBuscarProductoController.text)
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
                            labelStyle:
                                FlutterFlowTheme.of(context).bodySmall.override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF57636C),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).lineColor,
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
                              color: FlutterFlowTheme.of(context).grayIcon,
                              size: 18.0,
                            ),
                            suffixIcon: _model
                                    .textFieldBuscarProductoController!
                                    .text
                                    .isNotEmpty
                                ? InkWell(
                                    onTap: () async {
                                      _model.textFieldBuscarProductoController
                                          ?.clear();
                                      setState(() {
                                        _model.simpleSearchResults = TextSearch(
                                          widget.parameter2!
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
                                      setState(() {});
                                    },
                                    child: Icon(
                                      Icons.clear,
                                      color:
                                          FlutterFlowTheme.of(context).darkBG,
                                      size: 22.0,
                                    ),
                                  )
                                : null,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderRadius: 50.0,
                    borderWidth: 5.0,
                    buttonSize: 50.0,
                    fillColor: FlutterFlowTheme.of(context).white,
                    icon: Icon(
                      Icons.qr_code,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 36.0,
                    ),
                    onPressed: () async {
                      _model.barcodeValue =
                          await FlutterBarcodeScanner.scanBarcode(
                        '#C62828', // scanning line color
                        'Cancel', // cancel button text
                        true, // whether to show the flash icon
                        ScanMode.QR,
                      );

                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
          ),
          if (FFAppState().searchActive)
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 44.0),
              child: Builder(
                builder: (context) {
                  final productosNoSearch = _model.simpleSearchResults.toList();
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
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 5.0),
                                    child: Image.network(
                                      valueOrDefault<String>(
                                        productosNoSearchItem.fotoOriginal,
                                        'https://lirp.cdn-website.com/343f0986cb9d4bc5bc00d8a4a79b4156/dms3rep/multi/opt/1274512-placeholder-640w.png',
                                      ),
                                      width: 82.1,
                                      height: 100.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            productosNoSearchItem.descripcion,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: Color(0xFF1D2429),
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                productosNoSearchItem.precio
                                                    .toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              Color(0xFF1D2429),
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.normal,
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 30.0,
                                        borderWidth: 1.0,
                                        buttonSize: 50.0,
                                        icon: FaIcon(
                                          FontAwesomeIcons.solidEdit,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBlack,
                                          size: 25.0,
                                        ),
                                        onPressed: () async {
                                          context.pushNamed(
                                            'Modificar_Producto',
                                            queryParameters: {
                                              'idProducto': serializeParam(
                                                productosNoSearchItem.reference,
                                                ParamType.DocumentReference,
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
    );
  }
}

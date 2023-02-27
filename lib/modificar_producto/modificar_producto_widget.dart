import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_media.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'modificar_producto_model.dart';
export 'modificar_producto_model.dart';

class ModificarProductoWidget extends StatefulWidget {
  const ModificarProductoWidget({
    Key? key,
    this.idProducto,
  }) : super(key: key);

  final DocumentReference? idProducto;

  @override
  _ModificarProductoWidgetState createState() =>
      _ModificarProductoWidgetState();
}

class _ModificarProductoWidgetState extends State<ModificarProductoWidget> {
  late ModificarProductoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModificarProductoModel());

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
        final modificarProductoProductoRecord = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryColor,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).customColor3,
            automaticallyImplyLeading: true,
            title: Text(
              'Modificar Producto',
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
          body: SafeArea(
            child: Container(
              width: double.infinity,
              child: Form(
                key: _model.formKey,
                autovalidateMode: AutovalidateMode.always,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 10.0, 10.0),
                        child: Material(
                          color: Colors.transparent,
                          elevation: 0.0,
                          child: Container(
                            width: double.infinity,
                            height: 93.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).white,
                                width: 1.0,
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      child: Autocomplete<String>(
                                        initialValue: TextEditingValue(
                                            text:
                                                modificarProductoProductoRecord
                                                    .idCliente!),
                                        optionsBuilder: (textEditingValue) {
                                          if (textEditingValue.text == '') {
                                            return const Iterable<
                                                String>.empty();
                                          }
                                          return ['Option 1'].where((option) {
                                            final lowercaseOption =
                                                option.toLowerCase();
                                            return lowercaseOption.contains(
                                                textEditingValue.text
                                                    .toLowerCase());
                                          });
                                        },
                                        optionsViewBuilder:
                                            (context, onSelected, options) {
                                          return AutocompleteOptionsList(
                                            textFieldKey: _model
                                                .textFieldBuscarClienteKey,
                                            textController: _model
                                                .textFieldBuscarClienteController!,
                                            options: options.toList(),
                                            onSelected: onSelected,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText1,
                                            textHighlightStyle: TextStyle(),
                                            elevation: 4.0,
                                            optionBackgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                            optionHighlightColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            maxHeight: 120.0,
                                          );
                                        },
                                        onSelected: (String selection) {
                                          setState(() => _model
                                                  .textFieldBuscarClienteSelectedOption =
                                              selection);
                                          FocusScope.of(context).unfocus();
                                        },
                                        fieldViewBuilder: (
                                          context,
                                          textEditingController,
                                          focusNode,
                                          onEditingComplete,
                                        ) {
                                          _model.textFieldBuscarClienteController =
                                              textEditingController;
                                          return TextFormField(
                                            key: _model
                                                .textFieldBuscarClienteKey,
                                            controller: textEditingController,
                                            focusNode: focusNode,
                                            onEditingComplete:
                                                onEditingComplete,
                                            onChanged: (_) =>
                                                EasyDebounce.debounce(
                                              '_model.textFieldBuscarClienteController',
                                              Duration(milliseconds: 2000),
                                              () => setState(() {}),
                                            ),
                                            autofocus: true,
                                            autofillHints: [AutofillHints.name],
                                            readOnly: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Cliente Asociado',
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText2
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            Color(0xFF57636C),
                                                        fontSize: 14.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .lineColor,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .customColor3,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .customColor3,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                              filled: true,
                                              fillColor: Colors.white,
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
                                                .textFieldBuscarClienteControllerValidator
                                                .asValidator(context),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30.0,
                                  borderWidth: 1.0,
                                  buttonSize: 60.0,
                                  icon: Icon(
                                    Icons.delete_forever,
                                    color: FlutterFlowTheme.of(context)
                                        .customColor3,
                                    size: 40.0,
                                  ),
                                  onPressed: () async {
                                    final historialProductoCreateData = {
                                      ...createHistorialProductoRecordData(
                                        idHistCliente:
                                            modificarProductoProductoRecord
                                                .idCliente,
                                        histDescripcion:
                                            modificarProductoProductoRecord
                                                .descripcion,
                                        histPrecio:
                                            modificarProductoProductoRecord
                                                .precio,
                                        histMotivo: 'Baja',
                                        histCategoria:
                                            modificarProductoProductoRecord
                                                .categoria,
                                      ),
                                      'Hist_Fecha':
                                          FieldValue.serverTimestamp(),
                                    };
                                    await HistorialProductoRecord.collection
                                        .doc()
                                        .set(historialProductoCreateData);
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('Confirma la accion'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                    await modificarProductoProductoRecord
                                        .reference
                                        .delete();
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text(
                                              modificarProductoProductoRecord
                                                  .descripcion!),
                                          content: Text(
                                              'El producto se ha eliminado'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                    context.pop();
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 10.0, 10.0),
                        child: TextFormField(
                          controller:
                              _model.textFieldDescripcionProdController ??=
                                  TextEditingController(
                            text: modificarProductoProductoRecord.descripcion,
                          ),
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Descripción',
                            hintText: 'Descripción del producto',
                            hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).lineColor,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD51F27),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD51F27),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context).white,
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Lato',
                                color:
                                    FlutterFlowTheme.of(context).primaryBlack,
                              ),
                          maxLines: 3,
                          validator: _model
                              .textFieldDescripcionProdControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 10.0, 10.0),
                              child: TextFormField(
                                controller:
                                    _model.textFieldCantidadProdController ??=
                                        TextEditingController(
                                  text: modificarProductoProductoRecord.cantidad
                                      ?.toString(),
                                ),
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Cantidad',
                                  hintText: 'Cantidad de Productos',
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodyText2,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .lineColor,
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFD51F27),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFD51F27),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                                keyboardType: TextInputType.number,
                                validator: _model
                                    .textFieldCantidadProdControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 10.0, 10.0, 10.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: TextFormField(
                                controller:
                                    _model.textFieldPrecioProdController ??=
                                        TextEditingController(
                                  text: formatNumber(
                                    modificarProductoProductoRecord.precio,
                                    formatType: FormatType.decimal,
                                    decimalType: DecimalType.commaDecimal,
                                    currency: '\$',
                                  ),
                                ),
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Precio',
                                  hintText: 'Precio del Producto',
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodyText2,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .lineColor,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFD51F27),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFD51F27),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                                keyboardType:
                                    const TextInputType.numberWithOptions(
                                        signed: true, decimal: true),
                                validator: _model
                                    .textFieldPrecioProdControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 10.0, 10.0),
                              child: TextFormField(
                                controller:
                                    _model.textFieldCodigoProdController ??=
                                        TextEditingController(
                                  text: modificarProductoProductoRecord
                                      .codigoProducto,
                                ),
                                autofocus: true,
                                readOnly: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Código',
                                  hintText: 'Código de identificación',
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodyText2,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .lineColor,
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFD51F27),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFFD51F27),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context).bodyText1,
                                keyboardType: TextInputType.phone,
                                validator: _model
                                    .textFieldCodigoProdControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 0.0, 10.0),
                              child: StreamBuilder<List<CategoriaRecord>>(
                                stream: queryCategoriaRecord(),
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
                                  List<CategoriaRecord>
                                      dropDownCategoriaProdCategoriaRecordList =
                                      snapshot.data!;
                                  return FlutterFlowDropDown<String>(
                                    initialOption:
                                        _model.dropDownCategoriaProdValue ??=
                                            modificarProductoProductoRecord
                                                .categoria,
                                    options:
                                        dropDownCategoriaProdCategoriaRecordList
                                            .map((e) => e.categoria)
                                            .withoutNulls
                                            .toList()
                                            .toList(),
                                    onChanged: (val) => setState(() => _model
                                        .dropDownCategoriaProdValue = val),
                                    width: 180.0,
                                    height: 50.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Lato',
                                          color: Colors.black,
                                        ),
                                    hintText: 'Categoría ',
                                    fillColor: Colors.white,
                                    elevation: 2.0,
                                    borderColor:
                                        FlutterFlowTheme.of(context).lineColor,
                                    borderWidth: 0.0,
                                    borderRadius: 0.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 4.0, 12.0, 4.0),
                                    hidesUnderline: true,
                                  );
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 10.0, 10.0, 10.0),
                            child: StreamBuilder<List<EstadoProductoRecord>>(
                              stream: queryEstadoProductoRecord(),
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
                                List<EstadoProductoRecord>
                                    dropDownEstadoProdEstadoProductoRecordList =
                                    snapshot.data!;
                                return FlutterFlowDropDown<String>(
                                  initialOption:
                                      _model.dropDownEstadoProdValue ??=
                                          modificarProductoProductoRecord
                                              .estadoProducto,
                                  options:
                                      dropDownEstadoProdEstadoProductoRecordList
                                          .map((e) => e.estado)
                                          .withoutNulls
                                          .toList()
                                          .toList(),
                                  onChanged: (val) => setState(() =>
                                      _model.dropDownEstadoProdValue = val),
                                  width: 140.0,
                                  height: 50.0,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lato',
                                        color: Colors.black,
                                      ),
                                  hintText: 'Estado ',
                                  fillColor: Colors.white,
                                  elevation: 2.0,
                                  borderColor:
                                      FlutterFlowTheme.of(context).lineColor,
                                  borderWidth: 0.0,
                                  borderRadius: 0.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 4.0, 12.0, 4.0),
                                  hidesUnderline: true,
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, -0.1),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 5.0, 5.0, 5.0),
                              child: InkWell(
                                onTap: () async {
                                  final selectedMedia =
                                      await selectMediaWithSourceBottomSheet(
                                    context: context,
                                    allowPhoto: true,
                                  );
                                  if (selectedMedia != null &&
                                      selectedMedia.every((m) =>
                                          validateFileFormat(
                                              m.storagePath, context))) {
                                    setState(
                                        () => _model.isMediaUploading = true);
                                    var selectedUploadedFiles =
                                        <FFUploadedFile>[];
                                    var downloadUrls = <String>[];
                                    try {
                                      selectedUploadedFiles = selectedMedia
                                          .map((m) => FFUploadedFile(
                                                name: m.storagePath
                                                    .split('/')
                                                    .last,
                                                bytes: m.bytes,
                                                height: m.dimensions?.height,
                                                width: m.dimensions?.width,
                                              ))
                                          .toList();

                                      downloadUrls = (await Future.wait(
                                        selectedMedia.map(
                                          (m) async => await uploadData(
                                              m.storagePath, m.bytes),
                                        ),
                                      ))
                                          .where((u) => u != null)
                                          .map((u) => u!)
                                          .toList();
                                    } finally {
                                      _model.isMediaUploading = false;
                                    }
                                    if (selectedUploadedFiles.length ==
                                            selectedMedia.length &&
                                        downloadUrls.length ==
                                            selectedMedia.length) {
                                      setState(() {
                                        _model.uploadedLocalFile =
                                            selectedUploadedFiles.first;
                                        _model.uploadedFileUrl =
                                            downloadUrls.first;
                                      });
                                    } else {
                                      setState(() {});
                                      return;
                                    }
                                  }

                                  FFAppState().update(() {
                                    FFAppState().imgProdTemp =
                                        valueOrDefault<String>(
                                      _model.uploadedFileUrl,
                                      'https://lirp.cdn-website.com/343f0986cb9d4bc5bc00d8a4a79b4156/dms3rep/multi/opt/1274512-placeholder-640w.png',
                                    );
                                  });
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: Image.network(
                                    valueOrDefault<String>(
                                      modificarProductoProductoRecord
                                          .fotoOriginal,
                                      'https://lirp.cdn-website.com/343f0986cb9d4bc5bc00d8a4a79b4156/dms3rep/multi/opt/1274512-placeholder-640w.png',
                                    ),
                                    width: 180.0,
                                    height: 120.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.1, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 10.0),
                          child: Container(
                            width: double.infinity,
                            height: 126.6,
                            constraints: BoxConstraints(
                              maxWidth: double.infinity,
                              maxHeight: double.infinity,
                            ),
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).white,
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 10.0, 10.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment:
                                        AlignmentDirectional(-1.0, -0.55),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 0.0, 5.0),
                                      child: Text(
                                        'Medidas',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 10.0, 0.0),
                                          child: TextFormField(
                                            controller: _model
                                                    .textFieldAnchoController ??=
                                                TextEditingController(
                                              text:
                                                  modificarProductoProductoRecord
                                                      .ancho
                                                      ?.toString(),
                                            ),
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Ancho',
                                              hintText: 'metros',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText2,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .lineColor,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFD51F27),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFD51F27),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                            keyboardType: const TextInputType
                                                    .numberWithOptions(
                                                signed: true, decimal: true),
                                            validator: _model
                                                .textFieldAnchoControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 10.0, 5.0, 10.0),
                                          child: TextFormField(
                                            controller: _model
                                                    .textFieldAltoController ??=
                                                TextEditingController(
                                              text:
                                                  modificarProductoProductoRecord
                                                      .alto
                                                      ?.toString(),
                                            ),
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Alto',
                                              hintText: 'metros',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText2,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .lineColor,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFD51F27),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFD51F27),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                            keyboardType: TextInputType.number,
                                            validator: _model
                                                .textFieldAltoControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: TextFormField(
                                            controller: _model
                                                    .textFieldLargoController ??=
                                                TextEditingController(
                                              text:
                                                  modificarProductoProductoRecord
                                                      .profundidad
                                                      ?.toString(),
                                            ),
                                            autofocus: true,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelText: 'Largo',
                                              hintText: 'metros',
                                              hintStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText2,
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .lineColor,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFD51F27),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0xFFD51F27),
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  topLeft: Radius.circular(4.0),
                                                  topRight:
                                                      Radius.circular(4.0),
                                                ),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1,
                                            keyboardType: TextInputType.number,
                                            validator: _model
                                                .textFieldLargoControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 20.0, 10.0, 10.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              if (_model.formKey.currentState == null ||
                                  !_model.formKey.currentState!.validate()) {
                                return;
                              }

                              final productoUpdateData =
                                  createProductoRecordData(
                                descripcion: _model
                                    .textFieldDescripcionProdController.text,
                                fotoOriginal: _model.uploadedFileUrl,
                                ancho: double.tryParse(
                                    _model.textFieldAnchoController.text),
                                alto: double.tryParse(
                                    _model.textFieldAltoController.text),
                                profundidad: double.tryParse(
                                    _model.textFieldLargoController.text),
                                cantidad: int.tryParse(_model
                                    .textFieldCantidadProdController.text),
                                precio: double.tryParse(
                                    _model.textFieldPrecioProdController.text),
                                codigoProducto:
                                    _model.textFieldCodigoProdController.text,
                                estadoProducto: _model.dropDownEstadoProdValue,
                                categoria: _model.dropDownCategoriaProdValue,
                              );
                              await widget.idProducto!
                                  .update(productoUpdateData);
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('OK'),
                                    content: Text(
                                        'La modificación se realizó exitosamente'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
                                        child: Text('Aceptar'),
                                      ),
                                    ],
                                  );
                                },
                              );

                              context.pushNamed('Buscar_Productos');
                            },
                            text: 'CONFIRMAR',
                            options: FFButtonOptions(
                              width: 300.0,
                              height: 40.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).customColor3,
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
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 10.0, 30.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('Main-BlancoDesplegable');
                            },
                            text: 'CANCELAR',
                            options: FFButtonOptions(
                              width: 300.0,
                              height: 40.0,
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
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

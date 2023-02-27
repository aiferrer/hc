import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'direccion_copy_model.dart';
export 'direccion_copy_model.dart';

class DireccionCopyWidget extends StatefulWidget {
  const DireccionCopyWidget({
    Key? key,
    this.idCliente,
  }) : super(key: key);

  final DocumentReference? idCliente;

  @override
  _DireccionCopyWidgetState createState() => _DireccionCopyWidgetState();
}

class _DireccionCopyWidgetState extends State<DireccionCopyWidget> {
  late DireccionCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();
  LatLng? currentUserLocationValue;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DireccionCopyModel());

    getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0), cached: true)
        .then((loc) => setState(() => currentUserLocationValue = loc));
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
    if (currentUserLocationValue == null) {
      return Container(
        color: FlutterFlowTheme.of(context).primaryBackground,
        child: Center(
          child: SizedBox(
            width: 50.0,
            height: 50.0,
            child: CircularProgressIndicator(
              color: FlutterFlowTheme.of(context).secondaryColor,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).customColor3,
        automaticallyImplyLeading: true,
        title: Align(
          alignment: AlignmentDirectional(-0.1, 0.0),
          child: Text(
            'Ingresar Dirección',
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
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: FlutterFlowPlacePicker(
                      iOSGoogleMapsApiKey:
                          'AIzaSyA3OEi5KuxlSwTDkPDIS2YnbNonCUeQST0',
                      androidGoogleMapsApiKey:
                          'AIzaSyCV6g6A_ZE1LP4TNM1XJuZmHjtR2aSN5tg',
                      webGoogleMapsApiKey:
                          'AIzaSyDkjTELEvKIDAG6NFus4eb-c270S3DsHOo',
                      onSelect: (place) async {
                        setState(() => _model.placePickerValue = place);
                        (await _model.googleMapsController.future)
                            .animateCamera(CameraUpdate.newLatLng(
                                place.latLng.toGoogleMaps()));
                      },
                      defaultText: 'Seleccionar Localización',
                      icon: Icon(
                        Icons.place,
                        color: Colors.white,
                        size: 16.0,
                      ),
                      buttonOptions: FFButtonOptions(
                        width: 200.0,
                        height: 40.0,
                        color: FlutterFlowTheme.of(context).primaryBlack,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Lato',
                                  color: Colors.white,
                                ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  constraints: BoxConstraints(
                    maxWidth: double.infinity,
                    maxHeight: double.infinity,
                  ),
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Builder(builder: (context) {
                    final _googleMapMarker = _model.placePickerValue.latLng;
                    return FlutterFlowGoogleMap(
                      controller: _model.googleMapsController,
                      onCameraIdle: (latLng) =>
                          _model.googleMapsCenter = latLng,
                      initialLocation: _model.googleMapsCenter ??=
                          currentUserLocationValue!,
                      markers: [
                        if (_googleMapMarker != null)
                          FlutterFlowMarker(
                            _googleMapMarker.serialize(),
                            _googleMapMarker,
                          ),
                      ],
                      markerColor: GoogleMarkerColor.red,
                      mapType: MapType.normal,
                      style: GoogleMapStyle.standard,
                      initialZoom: 15.0,
                      allowInteraction: true,
                      allowZoom: true,
                      showZoomControls: true,
                      showLocation: true,
                      showCompass: false,
                      showMapToolbar: false,
                      showTraffic: false,
                      centerMapOnMarkerTap: true,
                    );
                  }),
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  final direccionCreateData = createDireccionRecordData(
                    ubicacion: _model.placePickerValue.latLng,
                  );
                  await DireccionRecord.createDoc(widget.idCliente!)
                      .set(direccionCreateData);
                  await showDialog(
                    context: context,
                    builder: (alertDialogContext) {
                      return AlertDialog(
                        title: Text('Guardar direccion'),
                        content: Text('La dirección se guardó exitosamente'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(alertDialogContext),
                            child: Text('Ok'),
                          ),
                        ],
                      );
                    },
                  );
                },
                text: 'Guardar Dirección',
                options: FFButtonOptions(
                  width: 600.0,
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).lineColor,
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Lato',
                        color: FlutterFlowTheme.of(context).darkBG,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

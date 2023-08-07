import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _NumeroFactura = prefs.getInt('ff_NumeroFactura') ?? _NumeroFactura;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _searchActive = false;
  bool get searchActive => _searchActive;
  set searchActive(bool _value) {
    _searchActive = _value;
  }

  String _imgProdTemp = '';
  String get imgProdTemp => _imgProdTemp;
  set imgProdTemp(String _value) {
    _imgProdTemp = _value;
  }

  bool _Check = false;
  bool get Check => _Check;
  set Check(bool _value) {
    _Check = _value;
  }

  LatLng? _currentLocation = LatLng(-31.4200252, -64.4865155);
  LatLng? get currentLocation => _currentLocation;
  set currentLocation(LatLng? _value) {
    _currentLocation = _value;
  }

  DocumentReference? _productocancelado;
  DocumentReference? get productocancelado => _productocancelado;
  set productocancelado(DocumentReference? _value) {
    _productocancelado = _value;
  }

  String _Nombreyapellido = '';
  String get Nombreyapellido => _Nombreyapellido;
  set Nombreyapellido(String _value) {
    _Nombreyapellido = _value;
  }

  String _direccion = '';
  String get direccion => _direccion;
  set direccion(String _value) {
    _direccion = _value;
  }

  String _telefono = '';
  String get telefono => _telefono;
  set telefono(String _value) {
    _telefono = _value;
  }

  double _TotalFactura = 0.0;
  double get TotalFactura => _TotalFactura;
  set TotalFactura(double _value) {
    _TotalFactura = _value;
  }

  double _BonificacionFactura = 0.0;
  double get BonificacionFactura => _BonificacionFactura;
  set BonificacionFactura(double _value) {
    _BonificacionFactura = _value;
  }

  double _SubTotalFactura = 0.0;
  double get SubTotalFactura => _SubTotalFactura;
  set SubTotalFactura(double _value) {
    _SubTotalFactura = _value;
  }

  String _qrValue = '';
  String get qrValue => _qrValue;
  set qrValue(String _value) {
    _qrValue = _value;
  }

  int _NumeroFactura = 0;
  int get NumeroFactura => _NumeroFactura;
  set NumeroFactura(int _value) {
    _NumeroFactura = _value;
    prefs.setInt('ff_NumeroFactura', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

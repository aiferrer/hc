import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
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

  List<DocumentReference> _prodacambiar = [];
  List<DocumentReference> get prodacambiar => _prodacambiar;
  set prodacambiar(List<DocumentReference> _value) {
    _prodacambiar = _value;
  }

  void addToProdacambiar(DocumentReference _value) {
    _prodacambiar.add(_value);
  }

  void removeFromProdacambiar(DocumentReference _value) {
    _prodacambiar.remove(_value);
  }

  void removeAtIndexFromProdacambiar(int _index) {
    _prodacambiar.removeAt(_index);
  }

  bool _Check = false;
  bool get Check => _Check;
  set Check(bool _value) {
    _Check = _value;
  }

  LatLng? _currentLocation;
  LatLng? get currentLocation => _currentLocation;
  set currentLocation(LatLng? _value) {
    _currentLocation = _value;
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

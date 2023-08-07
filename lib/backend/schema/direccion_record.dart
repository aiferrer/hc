import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DireccionRecord extends FirestoreRecord {
  DireccionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Id_Cliente" field.
  DocumentReference? _idCliente;
  DocumentReference? get idCliente => _idCliente;
  bool hasIdCliente() => _idCliente != null;

  // "Direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  // "Altura" field.
  String? _altura;
  String get altura => _altura ?? '';
  bool hasAltura() => _altura != null;

  // "Piso" field.
  String? _piso;
  String get piso => _piso ?? '';
  bool hasPiso() => _piso != null;

  // "Dpto" field.
  String? _dpto;
  String get dpto => _dpto ?? '';
  bool hasDpto() => _dpto != null;

  // "Barrio" field.
  String? _barrio;
  String get barrio => _barrio ?? '';
  bool hasBarrio() => _barrio != null;

  // "Ciudad" field.
  String? _ciudad;
  String get ciudad => _ciudad ?? '';
  bool hasCiudad() => _ciudad != null;

  // "Provincia" field.
  String? _provincia;
  String get provincia => _provincia ?? '';
  bool hasProvincia() => _provincia != null;

  // "Pais" field.
  String? _pais;
  String get pais => _pais ?? '';
  bool hasPais() => _pais != null;

  // "CP" field.
  String? _cp;
  String get cp => _cp ?? '';
  bool hasCp() => _cp != null;

  // "Tipo_Direccion" field.
  String? _tipoDireccion;
  String get tipoDireccion => _tipoDireccion ?? '';
  bool hasTipoDireccion() => _tipoDireccion != null;

  // "Ubicacion" field.
  LatLng? _ubicacion;
  LatLng? get ubicacion => _ubicacion;
  bool hasUbicacion() => _ubicacion != null;

  // "Principal" field.
  bool? _principal;
  bool get principal => _principal ?? false;
  bool hasPrincipal() => _principal != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _idCliente = snapshotData['Id_Cliente'] as DocumentReference?;
    _direccion = snapshotData['Direccion'] as String?;
    _altura = snapshotData['Altura'] as String?;
    _piso = snapshotData['Piso'] as String?;
    _dpto = snapshotData['Dpto'] as String?;
    _barrio = snapshotData['Barrio'] as String?;
    _ciudad = snapshotData['Ciudad'] as String?;
    _provincia = snapshotData['Provincia'] as String?;
    _pais = snapshotData['Pais'] as String?;
    _cp = snapshotData['CP'] as String?;
    _tipoDireccion = snapshotData['Tipo_Direccion'] as String?;
    _ubicacion = snapshotData['Ubicacion'] as LatLng?;
    _principal = snapshotData['Principal'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Direccion')
          : FirebaseFirestore.instance.collectionGroup('Direccion');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('Direccion').doc();

  static Stream<DireccionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DireccionRecord.fromSnapshot(s));

  static Future<DireccionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DireccionRecord.fromSnapshot(s));

  static DireccionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DireccionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DireccionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DireccionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DireccionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DireccionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDireccionRecordData({
  DocumentReference? idCliente,
  String? direccion,
  String? altura,
  String? piso,
  String? dpto,
  String? barrio,
  String? ciudad,
  String? provincia,
  String? pais,
  String? cp,
  String? tipoDireccion,
  LatLng? ubicacion,
  bool? principal,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Id_Cliente': idCliente,
      'Direccion': direccion,
      'Altura': altura,
      'Piso': piso,
      'Dpto': dpto,
      'Barrio': barrio,
      'Ciudad': ciudad,
      'Provincia': provincia,
      'Pais': pais,
      'CP': cp,
      'Tipo_Direccion': tipoDireccion,
      'Ubicacion': ubicacion,
      'Principal': principal,
    }.withoutNulls,
  );

  return firestoreData;
}

class DireccionRecordDocumentEquality implements Equality<DireccionRecord> {
  const DireccionRecordDocumentEquality();

  @override
  bool equals(DireccionRecord? e1, DireccionRecord? e2) {
    return e1?.idCliente == e2?.idCliente &&
        e1?.direccion == e2?.direccion &&
        e1?.altura == e2?.altura &&
        e1?.piso == e2?.piso &&
        e1?.dpto == e2?.dpto &&
        e1?.barrio == e2?.barrio &&
        e1?.ciudad == e2?.ciudad &&
        e1?.provincia == e2?.provincia &&
        e1?.pais == e2?.pais &&
        e1?.cp == e2?.cp &&
        e1?.tipoDireccion == e2?.tipoDireccion &&
        e1?.ubicacion == e2?.ubicacion &&
        e1?.principal == e2?.principal;
  }

  @override
  int hash(DireccionRecord? e) => const ListEquality().hash([
        e?.idCliente,
        e?.direccion,
        e?.altura,
        e?.piso,
        e?.dpto,
        e?.barrio,
        e?.ciudad,
        e?.provincia,
        e?.pais,
        e?.cp,
        e?.tipoDireccion,
        e?.ubicacion,
        e?.principal
      ]);

  @override
  bool isValidKey(Object? o) => o is DireccionRecord;
}

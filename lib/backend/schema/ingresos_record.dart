import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class IngresosRecord extends FirestoreRecord {
  IngresosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Fecha_Ingreso" field.
  DateTime? _fechaIngreso;
  DateTime? get fechaIngreso => _fechaIngreso;
  bool hasFechaIngreso() => _fechaIngreso != null;

  // "Concepto" field.
  String? _concepto;
  String get concepto => _concepto ?? '';
  bool hasConcepto() => _concepto != null;

  // "Monto_Total" field.
  double? _montoTotal;
  double get montoTotal => _montoTotal ?? 0.0;
  bool hasMontoTotal() => _montoTotal != null;

  // "Comision" field.
  double? _comision;
  double get comision => _comision ?? 0.0;
  bool hasComision() => _comision != null;

  // "Usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  void _initializeFields() {
    _fechaIngreso = snapshotData['Fecha_Ingreso'] as DateTime?;
    _concepto = snapshotData['Concepto'] as String?;
    _montoTotal = castToType<double>(snapshotData['Monto_Total']);
    _comision = castToType<double>(snapshotData['Comision']);
    _usuario = snapshotData['Usuario'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Ingresos');

  static Stream<IngresosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => IngresosRecord.fromSnapshot(s));

  static Future<IngresosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => IngresosRecord.fromSnapshot(s));

  static IngresosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      IngresosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static IngresosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      IngresosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'IngresosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is IngresosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createIngresosRecordData({
  DateTime? fechaIngreso,
  String? concepto,
  double? montoTotal,
  double? comision,
  DocumentReference? usuario,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Fecha_Ingreso': fechaIngreso,
      'Concepto': concepto,
      'Monto_Total': montoTotal,
      'Comision': comision,
      'Usuario': usuario,
    }.withoutNulls,
  );

  return firestoreData;
}

class IngresosRecordDocumentEquality implements Equality<IngresosRecord> {
  const IngresosRecordDocumentEquality();

  @override
  bool equals(IngresosRecord? e1, IngresosRecord? e2) {
    return e1?.fechaIngreso == e2?.fechaIngreso &&
        e1?.concepto == e2?.concepto &&
        e1?.montoTotal == e2?.montoTotal &&
        e1?.comision == e2?.comision &&
        e1?.usuario == e2?.usuario;
  }

  @override
  int hash(IngresosRecord? e) => const ListEquality().hash(
      [e?.fechaIngreso, e?.concepto, e?.montoTotal, e?.comision, e?.usuario]);

  @override
  bool isValidKey(Object? o) => o is IngresosRecord;
}

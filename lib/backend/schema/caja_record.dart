import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CajaRecord extends FirestoreRecord {
  CajaRecord._(
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

  // "Usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "Ingreso_Egreso" field.
  String? _ingresoEgreso;
  String get ingresoEgreso => _ingresoEgreso ?? '';
  bool hasIngresoEgreso() => _ingresoEgreso != null;

  // "Efectivo" field.
  bool? _efectivo;
  bool get efectivo => _efectivo ?? false;
  bool hasEfectivo() => _efectivo != null;

  // "Transferencia" field.
  bool? _transferencia;
  bool get transferencia => _transferencia ?? false;
  bool hasTransferencia() => _transferencia != null;

  void _initializeFields() {
    _fechaIngreso = snapshotData['Fecha_Ingreso'] as DateTime?;
    _concepto = snapshotData['Concepto'] as String?;
    _montoTotal = castToType<double>(snapshotData['Monto_Total']);
    _usuario = snapshotData['Usuario'] as DocumentReference?;
    _ingresoEgreso = snapshotData['Ingreso_Egreso'] as String?;
    _efectivo = snapshotData['Efectivo'] as bool?;
    _transferencia = snapshotData['Transferencia'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Caja');

  static Stream<CajaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CajaRecord.fromSnapshot(s));

  static Future<CajaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CajaRecord.fromSnapshot(s));

  static CajaRecord fromSnapshot(DocumentSnapshot snapshot) => CajaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CajaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CajaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CajaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CajaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCajaRecordData({
  DateTime? fechaIngreso,
  String? concepto,
  double? montoTotal,
  DocumentReference? usuario,
  String? ingresoEgreso,
  bool? efectivo,
  bool? transferencia,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Fecha_Ingreso': fechaIngreso,
      'Concepto': concepto,
      'Monto_Total': montoTotal,
      'Usuario': usuario,
      'Ingreso_Egreso': ingresoEgreso,
      'Efectivo': efectivo,
      'Transferencia': transferencia,
    }.withoutNulls,
  );

  return firestoreData;
}

class CajaRecordDocumentEquality implements Equality<CajaRecord> {
  const CajaRecordDocumentEquality();

  @override
  bool equals(CajaRecord? e1, CajaRecord? e2) {
    return e1?.fechaIngreso == e2?.fechaIngreso &&
        e1?.concepto == e2?.concepto &&
        e1?.montoTotal == e2?.montoTotal &&
        e1?.usuario == e2?.usuario &&
        e1?.ingresoEgreso == e2?.ingresoEgreso &&
        e1?.efectivo == e2?.efectivo &&
        e1?.transferencia == e2?.transferencia;
  }

  @override
  int hash(CajaRecord? e) => const ListEquality().hash([
        e?.fechaIngreso,
        e?.concepto,
        e?.montoTotal,
        e?.usuario,
        e?.ingresoEgreso,
        e?.efectivo,
        e?.transferencia
      ]);

  @override
  bool isValidKey(Object? o) => o is CajaRecord;
}

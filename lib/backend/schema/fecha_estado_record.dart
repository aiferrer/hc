import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FechaEstadoRecord extends FirestoreRecord {
  FechaEstadoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Fecha_Estado" field.
  DateTime? _fechaEstado;
  DateTime? get fechaEstado => _fechaEstado;
  bool hasFechaEstado() => _fechaEstado != null;

  // "Estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _fechaEstado = snapshotData['Fecha_Estado'] as DateTime?;
    _estado = snapshotData['Estado'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Fecha_Estado')
          : FirebaseFirestore.instance.collectionGroup('Fecha_Estado');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('Fecha_Estado').doc();

  static Stream<FechaEstadoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FechaEstadoRecord.fromSnapshot(s));

  static Future<FechaEstadoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FechaEstadoRecord.fromSnapshot(s));

  static FechaEstadoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FechaEstadoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FechaEstadoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FechaEstadoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FechaEstadoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FechaEstadoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFechaEstadoRecordData({
  DateTime? fechaEstado,
  String? estado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Fecha_Estado': fechaEstado,
      'Estado': estado,
    }.withoutNulls,
  );

  return firestoreData;
}

class FechaEstadoRecordDocumentEquality implements Equality<FechaEstadoRecord> {
  const FechaEstadoRecordDocumentEquality();

  @override
  bool equals(FechaEstadoRecord? e1, FechaEstadoRecord? e2) {
    return e1?.fechaEstado == e2?.fechaEstado && e1?.estado == e2?.estado;
  }

  @override
  int hash(FechaEstadoRecord? e) =>
      const ListEquality().hash([e?.fechaEstado, e?.estado]);

  @override
  bool isValidKey(Object? o) => o is FechaEstadoRecord;
}

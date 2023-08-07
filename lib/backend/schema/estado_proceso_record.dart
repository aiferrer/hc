import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EstadoProcesoRecord extends FirestoreRecord {
  EstadoProcesoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  void _initializeFields() {
    _estado = snapshotData['Estado'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Estado_Proceso');

  static Stream<EstadoProcesoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EstadoProcesoRecord.fromSnapshot(s));

  static Future<EstadoProcesoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EstadoProcesoRecord.fromSnapshot(s));

  static EstadoProcesoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EstadoProcesoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EstadoProcesoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EstadoProcesoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EstadoProcesoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EstadoProcesoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEstadoProcesoRecordData({
  String? estado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Estado': estado,
    }.withoutNulls,
  );

  return firestoreData;
}

class EstadoProcesoRecordDocumentEquality
    implements Equality<EstadoProcesoRecord> {
  const EstadoProcesoRecordDocumentEquality();

  @override
  bool equals(EstadoProcesoRecord? e1, EstadoProcesoRecord? e2) {
    return e1?.estado == e2?.estado;
  }

  @override
  int hash(EstadoProcesoRecord? e) => const ListEquality().hash([e?.estado]);

  @override
  bool isValidKey(Object? o) => o is EstadoProcesoRecord;
}

import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EstadoProductoRecord extends FirestoreRecord {
  EstadoProductoRecord._(
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
      FirebaseFirestore.instance.collection('Estado_Producto');

  static Stream<EstadoProductoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EstadoProductoRecord.fromSnapshot(s));

  static Future<EstadoProductoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EstadoProductoRecord.fromSnapshot(s));

  static EstadoProductoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EstadoProductoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EstadoProductoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EstadoProductoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EstadoProductoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EstadoProductoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEstadoProductoRecordData({
  String? estado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Estado': estado,
    }.withoutNulls,
  );

  return firestoreData;
}

class EstadoProductoRecordDocumentEquality
    implements Equality<EstadoProductoRecord> {
  const EstadoProductoRecordDocumentEquality();

  @override
  bool equals(EstadoProductoRecord? e1, EstadoProductoRecord? e2) {
    return e1?.estado == e2?.estado;
  }

  @override
  int hash(EstadoProductoRecord? e) => const ListEquality().hash([e?.estado]);

  @override
  bool isValidKey(Object? o) => o is EstadoProductoRecord;
}

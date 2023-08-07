import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MonedaRecord extends FirestoreRecord {
  MonedaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Moneda" field.
  String? _moneda;
  String get moneda => _moneda ?? '';
  bool hasMoneda() => _moneda != null;

  void _initializeFields() {
    _moneda = snapshotData['Moneda'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Moneda');

  static Stream<MonedaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MonedaRecord.fromSnapshot(s));

  static Future<MonedaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MonedaRecord.fromSnapshot(s));

  static MonedaRecord fromSnapshot(DocumentSnapshot snapshot) => MonedaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MonedaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MonedaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MonedaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MonedaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMonedaRecordData({
  String? moneda,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Moneda': moneda,
    }.withoutNulls,
  );

  return firestoreData;
}

class MonedaRecordDocumentEquality implements Equality<MonedaRecord> {
  const MonedaRecordDocumentEquality();

  @override
  bool equals(MonedaRecord? e1, MonedaRecord? e2) {
    return e1?.moneda == e2?.moneda;
  }

  @override
  int hash(MonedaRecord? e) => const ListEquality().hash([e?.moneda]);

  @override
  bool isValidKey(Object? o) => o is MonedaRecord;
}

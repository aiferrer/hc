import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FormaPagoRecord extends FirestoreRecord {
  FormaPagoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Efectivo" field.
  double? _efectivo;
  double get efectivo => _efectivo ?? 0.0;
  bool hasEfectivo() => _efectivo != null;

  // "Transferencia" field.
  double? _transferencia;
  double get transferencia => _transferencia ?? 0.0;
  bool hasTransferencia() => _transferencia != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _efectivo = castToType<double>(snapshotData['Efectivo']);
    _transferencia = castToType<double>(snapshotData['Transferencia']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Forma_Pago')
          : FirebaseFirestore.instance.collectionGroup('Forma_Pago');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('Forma_Pago').doc();

  static Stream<FormaPagoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FormaPagoRecord.fromSnapshot(s));

  static Future<FormaPagoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FormaPagoRecord.fromSnapshot(s));

  static FormaPagoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FormaPagoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FormaPagoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FormaPagoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FormaPagoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FormaPagoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFormaPagoRecordData({
  double? efectivo,
  double? transferencia,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Efectivo': efectivo,
      'Transferencia': transferencia,
    }.withoutNulls,
  );

  return firestoreData;
}

class FormaPagoRecordDocumentEquality implements Equality<FormaPagoRecord> {
  const FormaPagoRecordDocumentEquality();

  @override
  bool equals(FormaPagoRecord? e1, FormaPagoRecord? e2) {
    return e1?.efectivo == e2?.efectivo &&
        e1?.transferencia == e2?.transferencia;
  }

  @override
  int hash(FormaPagoRecord? e) =>
      const ListEquality().hash([e?.efectivo, e?.transferencia]);

  @override
  bool isValidKey(Object? o) => o is FormaPagoRecord;
}

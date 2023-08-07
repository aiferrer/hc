import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HistorialClienteRecord extends FirestoreRecord {
  HistorialClienteRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "Id_Hist_Cliente" field.
  String? _idHistCliente;
  String get idHistCliente => _idHistCliente ?? '';
  bool hasIdHistCliente() => _idHistCliente != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
    _bio = snapshotData['bio'] as String?;
    _userName = snapshotData['user_name'] as String?;
    _idHistCliente = snapshotData['Id_Hist_Cliente'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Historial_Cliente');

  static Stream<HistorialClienteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HistorialClienteRecord.fromSnapshot(s));

  static Future<HistorialClienteRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => HistorialClienteRecord.fromSnapshot(s));

  static HistorialClienteRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HistorialClienteRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HistorialClienteRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HistorialClienteRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HistorialClienteRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HistorialClienteRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHistorialClienteRecordData({
  String? email,
  String? phoneNumber,
  DateTime? editedTime,
  String? bio,
  String? userName,
  String? idHistCliente,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'phone_number': phoneNumber,
      'edited_time': editedTime,
      'bio': bio,
      'user_name': userName,
      'Id_Hist_Cliente': idHistCliente,
    }.withoutNulls,
  );

  return firestoreData;
}

class HistorialClienteRecordDocumentEquality
    implements Equality<HistorialClienteRecord> {
  const HistorialClienteRecordDocumentEquality();

  @override
  bool equals(HistorialClienteRecord? e1, HistorialClienteRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.editedTime == e2?.editedTime &&
        e1?.bio == e2?.bio &&
        e1?.userName == e2?.userName &&
        e1?.idHistCliente == e2?.idHistCliente;
  }

  @override
  int hash(HistorialClienteRecord? e) => const ListEquality().hash([
        e?.email,
        e?.phoneNumber,
        e?.editedTime,
        e?.bio,
        e?.userName,
        e?.idHistCliente
      ]);

  @override
  bool isValidKey(Object? o) => o is HistorialClienteRecord;
}

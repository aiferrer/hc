import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClienteBajaRecord extends FirestoreRecord {
  ClienteBajaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "apellido" field.
  String? _apellido;
  String get apellido => _apellido ?? '';
  bool hasApellido() => _apellido != null;

  // "telefono_contacto" field.
  int? _telefonoContacto;
  int get telefonoContacto => _telefonoContacto ?? 0;
  bool hasTelefonoContacto() => _telefonoContacto != null;

  // "dni" field.
  int? _dni;
  int get dni => _dni ?? 0;
  bool hasDni() => _dni != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "referencia" field.
  String? _referencia;
  String get referencia => _referencia ?? '';
  bool hasReferencia() => _referencia != null;

  // "Direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  // "fecha_alta" field.
  DateTime? _fechaAlta;
  DateTime? get fechaAlta => _fechaAlta;
  bool hasFechaAlta() => _fechaAlta != null;

  // "fecha_baja" field.
  DateTime? _fechaBaja;
  DateTime? get fechaBaja => _fechaBaja;
  bool hasFechaBaja() => _fechaBaja != null;

  // "motivo_baja" field.
  String? _motivoBaja;
  String get motivoBaja => _motivoBaja ?? '';
  bool hasMotivoBaja() => _motivoBaja != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _apellido = snapshotData['apellido'] as String?;
    _telefonoContacto = castToType<int>(snapshotData['telefono_contacto']);
    _dni = castToType<int>(snapshotData['dni']);
    _email = snapshotData['email'] as String?;
    _referencia = snapshotData['referencia'] as String?;
    _direccion = snapshotData['Direccion'] as String?;
    _fechaAlta = snapshotData['fecha_alta'] as DateTime?;
    _fechaBaja = snapshotData['fecha_baja'] as DateTime?;
    _motivoBaja = snapshotData['motivo_baja'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Cliente_Baja');

  static Stream<ClienteBajaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClienteBajaRecord.fromSnapshot(s));

  static Future<ClienteBajaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClienteBajaRecord.fromSnapshot(s));

  static ClienteBajaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClienteBajaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClienteBajaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClienteBajaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClienteBajaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClienteBajaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClienteBajaRecordData({
  String? nombre,
  String? apellido,
  int? telefonoContacto,
  int? dni,
  String? email,
  String? referencia,
  String? direccion,
  DateTime? fechaAlta,
  DateTime? fechaBaja,
  String? motivoBaja,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'apellido': apellido,
      'telefono_contacto': telefonoContacto,
      'dni': dni,
      'email': email,
      'referencia': referencia,
      'Direccion': direccion,
      'fecha_alta': fechaAlta,
      'fecha_baja': fechaBaja,
      'motivo_baja': motivoBaja,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClienteBajaRecordDocumentEquality implements Equality<ClienteBajaRecord> {
  const ClienteBajaRecordDocumentEquality();

  @override
  bool equals(ClienteBajaRecord? e1, ClienteBajaRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.apellido == e2?.apellido &&
        e1?.telefonoContacto == e2?.telefonoContacto &&
        e1?.dni == e2?.dni &&
        e1?.email == e2?.email &&
        e1?.referencia == e2?.referencia &&
        e1?.direccion == e2?.direccion &&
        e1?.fechaAlta == e2?.fechaAlta &&
        e1?.fechaBaja == e2?.fechaBaja &&
        e1?.motivoBaja == e2?.motivoBaja;
  }

  @override
  int hash(ClienteBajaRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.apellido,
        e?.telefonoContacto,
        e?.dni,
        e?.email,
        e?.referencia,
        e?.direccion,
        e?.fechaAlta,
        e?.fechaBaja,
        e?.motivoBaja
      ]);

  @override
  bool isValidKey(Object? o) => o is ClienteBajaRecord;
}

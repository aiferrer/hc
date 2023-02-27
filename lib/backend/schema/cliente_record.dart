import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'cliente_record.g.dart';

abstract class ClienteRecord
    implements Built<ClienteRecord, ClienteRecordBuilder> {
  static Serializer<ClienteRecord> get serializer => _$clienteRecordSerializer;

  String? get nombre;

  String? get apellido;

  @BuiltValueField(wireName: 'telefono_contacto')
  int? get telefonoContacto;

  int? get dni;

  String? get email;

  String? get referencia;

  @BuiltValueField(wireName: 'Direccion')
  String? get direccion;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ClienteRecordBuilder builder) => builder
    ..nombre = ''
    ..apellido = ''
    ..telefonoContacto = 0
    ..dni = 0
    ..email = ''
    ..referencia = ''
    ..direccion = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Cliente');

  static Stream<ClienteRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ClienteRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ClienteRecord._();
  factory ClienteRecord([void Function(ClienteRecordBuilder) updates]) =
      _$ClienteRecord;

  static ClienteRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createClienteRecordData({
  String? nombre,
  String? apellido,
  int? telefonoContacto,
  int? dni,
  String? email,
  String? referencia,
  String? direccion,
}) {
  final firestoreData = serializers.toFirestore(
    ClienteRecord.serializer,
    ClienteRecord(
      (c) => c
        ..nombre = nombre
        ..apellido = apellido
        ..telefonoContacto = telefonoContacto
        ..dni = dni
        ..email = email
        ..referencia = referencia
        ..direccion = direccion,
    ),
  );

  return firestoreData;
}

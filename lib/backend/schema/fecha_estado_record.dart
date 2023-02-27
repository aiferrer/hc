import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'fecha_estado_record.g.dart';

abstract class FechaEstadoRecord
    implements Built<FechaEstadoRecord, FechaEstadoRecordBuilder> {
  static Serializer<FechaEstadoRecord> get serializer =>
      _$fechaEstadoRecordSerializer;

  @BuiltValueField(wireName: 'Fecha_Estado')
  DateTime? get fechaEstado;

  @BuiltValueField(wireName: 'Estado')
  String? get estado;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(FechaEstadoRecordBuilder builder) =>
      builder..estado = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Fecha_Estado')
          : FirebaseFirestore.instance.collectionGroup('Fecha_Estado');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('Fecha_Estado').doc();

  static Stream<FechaEstadoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FechaEstadoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FechaEstadoRecord._();
  factory FechaEstadoRecord([void Function(FechaEstadoRecordBuilder) updates]) =
      _$FechaEstadoRecord;

  static FechaEstadoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFechaEstadoRecordData({
  DateTime? fechaEstado,
  String? estado,
}) {
  final firestoreData = serializers.toFirestore(
    FechaEstadoRecord.serializer,
    FechaEstadoRecord(
      (f) => f
        ..fechaEstado = fechaEstado
        ..estado = estado,
    ),
  );

  return firestoreData;
}

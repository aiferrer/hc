import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'forma_pago_record.g.dart';

abstract class FormaPagoRecord
    implements Built<FormaPagoRecord, FormaPagoRecordBuilder> {
  static Serializer<FormaPagoRecord> get serializer =>
      _$formaPagoRecordSerializer;

  @BuiltValueField(wireName: 'Efectivo')
  double? get efectivo;

  @BuiltValueField(wireName: 'Transferencia')
  double? get transferencia;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(FormaPagoRecordBuilder builder) => builder
    ..efectivo = 0.0
    ..transferencia = 0.0;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Forma_Pago')
          : FirebaseFirestore.instance.collectionGroup('Forma_Pago');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('Forma_Pago').doc();

  static Stream<FormaPagoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FormaPagoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FormaPagoRecord._();
  factory FormaPagoRecord([void Function(FormaPagoRecordBuilder) updates]) =
      _$FormaPagoRecord;

  static FormaPagoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFormaPagoRecordData({
  double? efectivo,
  double? transferencia,
}) {
  final firestoreData = serializers.toFirestore(
    FormaPagoRecord.serializer,
    FormaPagoRecord(
      (f) => f
        ..efectivo = efectivo
        ..transferencia = transferencia,
    ),
  );

  return firestoreData;
}

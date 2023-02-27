import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'moneda_record.g.dart';

abstract class MonedaRecord
    implements Built<MonedaRecord, MonedaRecordBuilder> {
  static Serializer<MonedaRecord> get serializer => _$monedaRecordSerializer;

  @BuiltValueField(wireName: 'Moneda')
  String? get moneda;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MonedaRecordBuilder builder) =>
      builder..moneda = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Moneda');

  static Stream<MonedaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MonedaRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MonedaRecord._();
  factory MonedaRecord([void Function(MonedaRecordBuilder) updates]) =
      _$MonedaRecord;

  static MonedaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMonedaRecordData({
  String? moneda,
}) {
  final firestoreData = serializers.toFirestore(
    MonedaRecord.serializer,
    MonedaRecord(
      (m) => m..moneda = moneda,
    ),
  );

  return firestoreData;
}

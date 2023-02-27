import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'estado_producto_record.g.dart';

abstract class EstadoProductoRecord
    implements Built<EstadoProductoRecord, EstadoProductoRecordBuilder> {
  static Serializer<EstadoProductoRecord> get serializer =>
      _$estadoProductoRecordSerializer;

  @BuiltValueField(wireName: 'Estado')
  String? get estado;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EstadoProductoRecordBuilder builder) =>
      builder..estado = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Estado_Producto');

  static Stream<EstadoProductoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EstadoProductoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EstadoProductoRecord._();
  factory EstadoProductoRecord(
          [void Function(EstadoProductoRecordBuilder) updates]) =
      _$EstadoProductoRecord;

  static EstadoProductoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEstadoProductoRecordData({
  String? estado,
}) {
  final firestoreData = serializers.toFirestore(
    EstadoProductoRecord.serializer,
    EstadoProductoRecord(
      (e) => e..estado = estado,
    ),
  );

  return firestoreData;
}

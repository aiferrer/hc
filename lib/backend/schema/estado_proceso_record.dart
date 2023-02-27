import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'estado_proceso_record.g.dart';

abstract class EstadoProcesoRecord
    implements Built<EstadoProcesoRecord, EstadoProcesoRecordBuilder> {
  static Serializer<EstadoProcesoRecord> get serializer =>
      _$estadoProcesoRecordSerializer;

  @BuiltValueField(wireName: 'Estado')
  String? get estado;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EstadoProcesoRecordBuilder builder) =>
      builder..estado = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Estado_Proceso');

  static Stream<EstadoProcesoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EstadoProcesoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EstadoProcesoRecord._();
  factory EstadoProcesoRecord(
          [void Function(EstadoProcesoRecordBuilder) updates]) =
      _$EstadoProcesoRecord;

  static EstadoProcesoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEstadoProcesoRecordData({
  String? estado,
}) {
  final firestoreData = serializers.toFirestore(
    EstadoProcesoRecord.serializer,
    EstadoProcesoRecord(
      (e) => e..estado = estado,
    ),
  );

  return firestoreData;
}

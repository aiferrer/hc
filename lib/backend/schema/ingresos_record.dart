import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ingresos_record.g.dart';

abstract class IngresosRecord
    implements Built<IngresosRecord, IngresosRecordBuilder> {
  static Serializer<IngresosRecord> get serializer =>
      _$ingresosRecordSerializer;

  @BuiltValueField(wireName: 'Fecha_Ingreso')
  DateTime? get fechaIngreso;

  @BuiltValueField(wireName: 'Concepto')
  String? get concepto;

  @BuiltValueField(wireName: 'Monto_Total')
  double? get montoTotal;

  @BuiltValueField(wireName: 'Comision')
  double? get comision;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(IngresosRecordBuilder builder) => builder
    ..concepto = ''
    ..montoTotal = 0.0
    ..comision = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Ingresos');

  static Stream<IngresosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<IngresosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  IngresosRecord._();
  factory IngresosRecord([void Function(IngresosRecordBuilder) updates]) =
      _$IngresosRecord;

  static IngresosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createIngresosRecordData({
  DateTime? fechaIngreso,
  String? concepto,
  double? montoTotal,
  double? comision,
}) {
  final firestoreData = serializers.toFirestore(
    IngresosRecord.serializer,
    IngresosRecord(
      (i) => i
        ..fechaIngreso = fechaIngreso
        ..concepto = concepto
        ..montoTotal = montoTotal
        ..comision = comision,
    ),
  );

  return firestoreData;
}

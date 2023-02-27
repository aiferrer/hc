import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'historial_producto_record.g.dart';

abstract class HistorialProductoRecord
    implements Built<HistorialProductoRecord, HistorialProductoRecordBuilder> {
  static Serializer<HistorialProductoRecord> get serializer =>
      _$historialProductoRecordSerializer;

  @BuiltValueField(wireName: 'Id_Hist_Prod')
  DocumentReference? get idHistProd;

  @BuiltValueField(wireName: 'Hist_Descripcion')
  String? get histDescripcion;

  @BuiltValueField(wireName: 'Hist_Precio')
  double? get histPrecio;

  @BuiltValueField(wireName: 'Hist_Motivo')
  String? get histMotivo;

  @BuiltValueField(wireName: 'Hist_Categoria')
  String? get histCategoria;

  @BuiltValueField(wireName: 'Hist_Fecha')
  DateTime? get histFecha;

  @BuiltValueField(wireName: 'Id_Hist_Cliente')
  String? get idHistCliente;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(HistorialProductoRecordBuilder builder) =>
      builder
        ..histDescripcion = ''
        ..histPrecio = 0.0
        ..histMotivo = ''
        ..histCategoria = ''
        ..idHistCliente = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Historial_Producto');

  static Stream<HistorialProductoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<HistorialProductoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  HistorialProductoRecord._();
  factory HistorialProductoRecord(
          [void Function(HistorialProductoRecordBuilder) updates]) =
      _$HistorialProductoRecord;

  static HistorialProductoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createHistorialProductoRecordData({
  DocumentReference? idHistProd,
  String? histDescripcion,
  double? histPrecio,
  String? histMotivo,
  String? histCategoria,
  DateTime? histFecha,
  String? idHistCliente,
}) {
  final firestoreData = serializers.toFirestore(
    HistorialProductoRecord.serializer,
    HistorialProductoRecord(
      (h) => h
        ..idHistProd = idHistProd
        ..histDescripcion = histDescripcion
        ..histPrecio = histPrecio
        ..histMotivo = histMotivo
        ..histCategoria = histCategoria
        ..histFecha = histFecha
        ..idHistCliente = idHistCliente,
    ),
  );

  return firestoreData;
}

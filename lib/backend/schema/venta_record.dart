import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'venta_record.g.dart';

abstract class VentaRecord implements Built<VentaRecord, VentaRecordBuilder> {
  static Serializer<VentaRecord> get serializer => _$ventaRecordSerializer;

  @BuiltValueField(wireName: 'Id_Cliente')
  DocumentReference? get idCliente;

  @BuiltValueField(wireName: 'Id_Producto')
  DocumentReference? get idProducto;

  String? get descripcion;

  int? get cantidad;

  double? get precio;

  double? get bonificacion;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(VentaRecordBuilder builder) => builder
    ..descripcion = ''
    ..cantidad = 0
    ..precio = 0.0
    ..bonificacion = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('venta');

  static Stream<VentaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VentaRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VentaRecord._();
  factory VentaRecord([void Function(VentaRecordBuilder) updates]) =
      _$VentaRecord;

  static VentaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVentaRecordData({
  DocumentReference? idCliente,
  DocumentReference? idProducto,
  String? descripcion,
  int? cantidad,
  double? precio,
  double? bonificacion,
}) {
  final firestoreData = serializers.toFirestore(
    VentaRecord.serializer,
    VentaRecord(
      (v) => v
        ..idCliente = idCliente
        ..idProducto = idProducto
        ..descripcion = descripcion
        ..cantidad = cantidad
        ..precio = precio
        ..bonificacion = bonificacion,
    ),
  );

  return firestoreData;
}

import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'producto_record.g.dart';

abstract class ProductoRecord
    implements Built<ProductoRecord, ProductoRecordBuilder> {
  static Serializer<ProductoRecord> get serializer =>
      _$productoRecordSerializer;

  @BuiltValueField(wireName: 'Id_Cliente')
  String? get idCliente;

  @BuiltValueField(wireName: 'Descripcion')
  String? get descripcion;

  @BuiltValueField(wireName: 'Foto_Original')
  String? get fotoOriginal;

  @BuiltValueField(wireName: 'Ancho')
  double? get ancho;

  @BuiltValueField(wireName: 'Alto')
  double? get alto;

  @BuiltValueField(wireName: 'Profundidad')
  double? get profundidad;

  @BuiltValueField(wireName: 'Cantidad')
  int? get cantidad;

  @BuiltValueField(wireName: 'Codigo_Producto')
  String? get codigoProducto;

  @BuiltValueField(wireName: 'Precio')
  double? get precio;

  @BuiltValueField(wireName: 'Moneda')
  String? get moneda;

  @BuiltValueField(wireName: 'Prod_Potencial')
  bool? get prodPotencial;

  @BuiltValueField(wireName: 'Estado_Producto')
  String? get estadoProducto;

  @BuiltValueField(wireName: 'Estado_Proceso')
  String? get estadoProceso;

  @BuiltValueField(wireName: 'Categoria')
  String? get categoria;

  @BuiltValueField(wireName: 'Fecha_Baja')
  DateTime? get fechaBaja;

  @BuiltValueField(wireName: 'Fecha_Alta')
  DateTime? get fechaAlta;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ProductoRecordBuilder builder) => builder
    ..idCliente = ''
    ..descripcion = ''
    ..fotoOriginal = ''
    ..ancho = 0.0
    ..alto = 0.0
    ..profundidad = 0.0
    ..cantidad = 0
    ..codigoProducto = ''
    ..precio = 0.0
    ..moneda = ''
    ..prodPotencial = false
    ..estadoProducto = ''
    ..estadoProceso = ''
    ..categoria = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Producto');

  static Stream<ProductoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ProductoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ProductoRecord._();
  factory ProductoRecord([void Function(ProductoRecordBuilder) updates]) =
      _$ProductoRecord;

  static ProductoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createProductoRecordData({
  String? idCliente,
  String? descripcion,
  String? fotoOriginal,
  double? ancho,
  double? alto,
  double? profundidad,
  int? cantidad,
  String? codigoProducto,
  double? precio,
  String? moneda,
  bool? prodPotencial,
  String? estadoProducto,
  String? estadoProceso,
  String? categoria,
  DateTime? fechaBaja,
  DateTime? fechaAlta,
}) {
  final firestoreData = serializers.toFirestore(
    ProductoRecord.serializer,
    ProductoRecord(
      (p) => p
        ..idCliente = idCliente
        ..descripcion = descripcion
        ..fotoOriginal = fotoOriginal
        ..ancho = ancho
        ..alto = alto
        ..profundidad = profundidad
        ..cantidad = cantidad
        ..codigoProducto = codigoProducto
        ..precio = precio
        ..moneda = moneda
        ..prodPotencial = prodPotencial
        ..estadoProducto = estadoProducto
        ..estadoProceso = estadoProceso
        ..categoria = categoria
        ..fechaBaja = fechaBaja
        ..fechaAlta = fechaAlta,
    ),
  );

  return firestoreData;
}

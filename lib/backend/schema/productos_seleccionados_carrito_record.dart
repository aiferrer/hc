import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductosSeleccionadosCarritoRecord extends FirestoreRecord {
  ProductosSeleccionadosCarritoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  bool hasPrecio() => _precio != null;

  // "id_Cliente" field.
  DocumentReference? _idCliente;
  DocumentReference? get idCliente => _idCliente;
  bool hasIdCliente() => _idCliente != null;

  // "id_Producto" field.
  DocumentReference? _idProducto;
  DocumentReference? get idProducto => _idProducto;
  bool hasIdProducto() => _idProducto != null;

  // "id_Venta" field.
  DocumentReference? _idVenta;
  DocumentReference? get idVenta => _idVenta;
  bool hasIdVenta() => _idVenta != null;

  void _initializeFields() {
    _descripcion = snapshotData['descripcion'] as String?;
    _cantidad = castToType<int>(snapshotData['cantidad']);
    _precio = castToType<double>(snapshotData['precio']);
    _idCliente = snapshotData['id_Cliente'] as DocumentReference?;
    _idProducto = snapshotData['id_Producto'] as DocumentReference?;
    _idVenta = snapshotData['id_Venta'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Productos_Seleccionados_Carrito');

  static Stream<ProductosSeleccionadosCarritoRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => ProductosSeleccionadosCarritoRecord.fromSnapshot(s));

  static Future<ProductosSeleccionadosCarritoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref
          .get()
          .then((s) => ProductosSeleccionadosCarritoRecord.fromSnapshot(s));

  static ProductosSeleccionadosCarritoRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      ProductosSeleccionadosCarritoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductosSeleccionadosCarritoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductosSeleccionadosCarritoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductosSeleccionadosCarritoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductosSeleccionadosCarritoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductosSeleccionadosCarritoRecordData({
  String? descripcion,
  int? cantidad,
  double? precio,
  DocumentReference? idCliente,
  DocumentReference? idProducto,
  DocumentReference? idVenta,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'descripcion': descripcion,
      'cantidad': cantidad,
      'precio': precio,
      'id_Cliente': idCliente,
      'id_Producto': idProducto,
      'id_Venta': idVenta,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductosSeleccionadosCarritoRecordDocumentEquality
    implements Equality<ProductosSeleccionadosCarritoRecord> {
  const ProductosSeleccionadosCarritoRecordDocumentEquality();

  @override
  bool equals(ProductosSeleccionadosCarritoRecord? e1,
      ProductosSeleccionadosCarritoRecord? e2) {
    return e1?.descripcion == e2?.descripcion &&
        e1?.cantidad == e2?.cantidad &&
        e1?.precio == e2?.precio &&
        e1?.idCliente == e2?.idCliente &&
        e1?.idProducto == e2?.idProducto &&
        e1?.idVenta == e2?.idVenta;
  }

  @override
  int hash(ProductosSeleccionadosCarritoRecord? e) =>
      const ListEquality().hash([
        e?.descripcion,
        e?.cantidad,
        e?.precio,
        e?.idCliente,
        e?.idProducto,
        e?.idVenta
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductosSeleccionadosCarritoRecord;
}

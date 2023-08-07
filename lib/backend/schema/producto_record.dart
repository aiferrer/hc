import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductoRecord extends FirestoreRecord {
  ProductoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Id_Cliente" field.
  String? _idCliente;
  String get idCliente => _idCliente ?? '';
  bool hasIdCliente() => _idCliente != null;

  // "Descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "Foto_Original" field.
  String? _fotoOriginal;
  String get fotoOriginal => _fotoOriginal ?? '';
  bool hasFotoOriginal() => _fotoOriginal != null;

  // "Ancho" field.
  double? _ancho;
  double get ancho => _ancho ?? 0.0;
  bool hasAncho() => _ancho != null;

  // "Alto" field.
  double? _alto;
  double get alto => _alto ?? 0.0;
  bool hasAlto() => _alto != null;

  // "Profundidad" field.
  double? _profundidad;
  double get profundidad => _profundidad ?? 0.0;
  bool hasProfundidad() => _profundidad != null;

  // "Cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "Codigo_Producto" field.
  String? _codigoProducto;
  String get codigoProducto => _codigoProducto ?? '';
  bool hasCodigoProducto() => _codigoProducto != null;

  // "Precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  bool hasPrecio() => _precio != null;

  // "Moneda" field.
  String? _moneda;
  String get moneda => _moneda ?? '';
  bool hasMoneda() => _moneda != null;

  // "Prod_Potencial" field.
  bool? _prodPotencial;
  bool get prodPotencial => _prodPotencial ?? false;
  bool hasProdPotencial() => _prodPotencial != null;

  // "Estado_Producto" field.
  String? _estadoProducto;
  String get estadoProducto => _estadoProducto ?? '';
  bool hasEstadoProducto() => _estadoProducto != null;

  // "Estado_Proceso" field.
  String? _estadoProceso;
  String get estadoProceso => _estadoProceso ?? '';
  bool hasEstadoProceso() => _estadoProceso != null;

  // "Categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  bool hasCategoria() => _categoria != null;

  // "Fecha_Baja" field.
  DateTime? _fechaBaja;
  DateTime? get fechaBaja => _fechaBaja;
  bool hasFechaBaja() => _fechaBaja != null;

  // "Fecha_Alta" field.
  DateTime? _fechaAlta;
  DateTime? get fechaAlta => _fechaAlta;
  bool hasFechaAlta() => _fechaAlta != null;

  // "Comprador" field.
  DocumentReference? _comprador;
  DocumentReference? get comprador => _comprador;
  bool hasComprador() => _comprador != null;

  // "Vendedor" field.
  DocumentReference? _vendedor;
  DocumentReference? get vendedor => _vendedor;
  bool hasVendedor() => _vendedor != null;

  void _initializeFields() {
    _idCliente = snapshotData['Id_Cliente'] as String?;
    _descripcion = snapshotData['Descripcion'] as String?;
    _fotoOriginal = snapshotData['Foto_Original'] as String?;
    _ancho = castToType<double>(snapshotData['Ancho']);
    _alto = castToType<double>(snapshotData['Alto']);
    _profundidad = castToType<double>(snapshotData['Profundidad']);
    _cantidad = castToType<int>(snapshotData['Cantidad']);
    _codigoProducto = snapshotData['Codigo_Producto'] as String?;
    _precio = castToType<double>(snapshotData['Precio']);
    _moneda = snapshotData['Moneda'] as String?;
    _prodPotencial = snapshotData['Prod_Potencial'] as bool?;
    _estadoProducto = snapshotData['Estado_Producto'] as String?;
    _estadoProceso = snapshotData['Estado_Proceso'] as String?;
    _categoria = snapshotData['Categoria'] as String?;
    _fechaBaja = snapshotData['Fecha_Baja'] as DateTime?;
    _fechaAlta = snapshotData['Fecha_Alta'] as DateTime?;
    _comprador = snapshotData['Comprador'] as DocumentReference?;
    _vendedor = snapshotData['Vendedor'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Producto');

  static Stream<ProductoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductoRecord.fromSnapshot(s));

  static Future<ProductoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductoRecord.fromSnapshot(s));

  static ProductoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
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
  DocumentReference? comprador,
  DocumentReference? vendedor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Id_Cliente': idCliente,
      'Descripcion': descripcion,
      'Foto_Original': fotoOriginal,
      'Ancho': ancho,
      'Alto': alto,
      'Profundidad': profundidad,
      'Cantidad': cantidad,
      'Codigo_Producto': codigoProducto,
      'Precio': precio,
      'Moneda': moneda,
      'Prod_Potencial': prodPotencial,
      'Estado_Producto': estadoProducto,
      'Estado_Proceso': estadoProceso,
      'Categoria': categoria,
      'Fecha_Baja': fechaBaja,
      'Fecha_Alta': fechaAlta,
      'Comprador': comprador,
      'Vendedor': vendedor,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductoRecordDocumentEquality implements Equality<ProductoRecord> {
  const ProductoRecordDocumentEquality();

  @override
  bool equals(ProductoRecord? e1, ProductoRecord? e2) {
    return e1?.idCliente == e2?.idCliente &&
        e1?.descripcion == e2?.descripcion &&
        e1?.fotoOriginal == e2?.fotoOriginal &&
        e1?.ancho == e2?.ancho &&
        e1?.alto == e2?.alto &&
        e1?.profundidad == e2?.profundidad &&
        e1?.cantidad == e2?.cantidad &&
        e1?.codigoProducto == e2?.codigoProducto &&
        e1?.precio == e2?.precio &&
        e1?.moneda == e2?.moneda &&
        e1?.prodPotencial == e2?.prodPotencial &&
        e1?.estadoProducto == e2?.estadoProducto &&
        e1?.estadoProceso == e2?.estadoProceso &&
        e1?.categoria == e2?.categoria &&
        e1?.fechaBaja == e2?.fechaBaja &&
        e1?.fechaAlta == e2?.fechaAlta &&
        e1?.comprador == e2?.comprador &&
        e1?.vendedor == e2?.vendedor;
  }

  @override
  int hash(ProductoRecord? e) => const ListEquality().hash([
        e?.idCliente,
        e?.descripcion,
        e?.fotoOriginal,
        e?.ancho,
        e?.alto,
        e?.profundidad,
        e?.cantidad,
        e?.codigoProducto,
        e?.precio,
        e?.moneda,
        e?.prodPotencial,
        e?.estadoProducto,
        e?.estadoProceso,
        e?.categoria,
        e?.fechaBaja,
        e?.fechaAlta,
        e?.comprador,
        e?.vendedor
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductoRecord;
}

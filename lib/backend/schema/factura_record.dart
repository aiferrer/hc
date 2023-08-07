import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FacturaRecord extends FirestoreRecord {
  FacturaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Id_Factura" field.
  DocumentReference? _idFactura;
  DocumentReference? get idFactura => _idFactura;
  bool hasIdFactura() => _idFactura != null;

  // "Fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "Numero_Factura" field.
  int? _numeroFactura;
  int get numeroFactura => _numeroFactura ?? 0;
  bool hasNumeroFactura() => _numeroFactura != null;

  // "Total_Factura" field.
  double? _totalFactura;
  double get totalFactura => _totalFactura ?? 0.0;
  bool hasTotalFactura() => _totalFactura != null;

  // "Bonificacion" field.
  double? _bonificacion;
  double get bonificacion => _bonificacion ?? 0.0;
  bool hasBonificacion() => _bonificacion != null;

  // "Sub_Total" field.
  double? _subTotal;
  double get subTotal => _subTotal ?? 0.0;
  bool hasSubTotal() => _subTotal != null;

  // "Nombre_Apellido_Cliente" field.
  String? _nombreApellidoCliente;
  String get nombreApellidoCliente => _nombreApellidoCliente ?? '';
  bool hasNombreApellidoCliente() => _nombreApellidoCliente != null;

  // "Direccion_Cliente" field.
  String? _direccionCliente;
  String get direccionCliente => _direccionCliente ?? '';
  bool hasDireccionCliente() => _direccionCliente != null;

  // "Telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  bool hasTelefono() => _telefono != null;

  // "productos" field.
  List<ProductosxfacturaStruct>? _productos;
  List<ProductosxfacturaStruct> get productos => _productos ?? const [];
  bool hasProductos() => _productos != null;

  void _initializeFields() {
    _idFactura = snapshotData['Id_Factura'] as DocumentReference?;
    _fecha = snapshotData['Fecha'] as DateTime?;
    _numeroFactura = castToType<int>(snapshotData['Numero_Factura']);
    _totalFactura = castToType<double>(snapshotData['Total_Factura']);
    _bonificacion = castToType<double>(snapshotData['Bonificacion']);
    _subTotal = castToType<double>(snapshotData['Sub_Total']);
    _nombreApellidoCliente = snapshotData['Nombre_Apellido_Cliente'] as String?;
    _direccionCliente = snapshotData['Direccion_Cliente'] as String?;
    _telefono = snapshotData['Telefono'] as String?;
    _productos = getStructList(
      snapshotData['productos'],
      ProductosxfacturaStruct.fromMap,
    );
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Factura');

  static Stream<FacturaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FacturaRecord.fromSnapshot(s));

  static Future<FacturaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FacturaRecord.fromSnapshot(s));

  static FacturaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FacturaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FacturaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FacturaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FacturaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FacturaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFacturaRecordData({
  DocumentReference? idFactura,
  DateTime? fecha,
  int? numeroFactura,
  double? totalFactura,
  double? bonificacion,
  double? subTotal,
  String? nombreApellidoCliente,
  String? direccionCliente,
  String? telefono,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Id_Factura': idFactura,
      'Fecha': fecha,
      'Numero_Factura': numeroFactura,
      'Total_Factura': totalFactura,
      'Bonificacion': bonificacion,
      'Sub_Total': subTotal,
      'Nombre_Apellido_Cliente': nombreApellidoCliente,
      'Direccion_Cliente': direccionCliente,
      'Telefono': telefono,
    }.withoutNulls,
  );

  return firestoreData;
}

class FacturaRecordDocumentEquality implements Equality<FacturaRecord> {
  const FacturaRecordDocumentEquality();

  @override
  bool equals(FacturaRecord? e1, FacturaRecord? e2) {
    const listEquality = ListEquality();
    return e1?.idFactura == e2?.idFactura &&
        e1?.fecha == e2?.fecha &&
        e1?.numeroFactura == e2?.numeroFactura &&
        e1?.totalFactura == e2?.totalFactura &&
        e1?.bonificacion == e2?.bonificacion &&
        e1?.subTotal == e2?.subTotal &&
        e1?.nombreApellidoCliente == e2?.nombreApellidoCliente &&
        e1?.direccionCliente == e2?.direccionCliente &&
        e1?.telefono == e2?.telefono &&
        listEquality.equals(e1?.productos, e2?.productos);
  }

  @override
  int hash(FacturaRecord? e) => const ListEquality().hash([
        e?.idFactura,
        e?.fecha,
        e?.numeroFactura,
        e?.totalFactura,
        e?.bonificacion,
        e?.subTotal,
        e?.nombreApellidoCliente,
        e?.direccionCliente,
        e?.telefono,
        e?.productos
      ]);

  @override
  bool isValidKey(Object? o) => o is FacturaRecord;
}

import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VentaRecord extends FirestoreRecord {
  VentaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Id_Cliente" field.
  DocumentReference? _idCliente;
  DocumentReference? get idCliente => _idCliente;
  bool hasIdCliente() => _idCliente != null;

  // "Id_Producto" field.
  DocumentReference? _idProducto;
  DocumentReference? get idProducto => _idProducto;
  bool hasIdProducto() => _idProducto != null;

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

  // "bonificacion" field.
  double? _bonificacion;
  double get bonificacion => _bonificacion ?? 0.0;
  bool hasBonificacion() => _bonificacion != null;

  // "prod_Seleccionados_List" field.
  List<DocumentReference>? _prodSeleccionadosList;
  List<DocumentReference> get prodSeleccionadosList =>
      _prodSeleccionadosList ?? const [];
  bool hasProdSeleccionadosList() => _prodSeleccionadosList != null;

  // "codigo_producto" field.
  String? _codigoProducto;
  String get codigoProducto => _codigoProducto ?? '';
  bool hasCodigoProducto() => _codigoProducto != null;

  void _initializeFields() {
    _idCliente = snapshotData['Id_Cliente'] as DocumentReference?;
    _idProducto = snapshotData['Id_Producto'] as DocumentReference?;
    _descripcion = snapshotData['descripcion'] as String?;
    _cantidad = castToType<int>(snapshotData['cantidad']);
    _precio = castToType<double>(snapshotData['precio']);
    _bonificacion = castToType<double>(snapshotData['bonificacion']);
    _prodSeleccionadosList =
        getDataList(snapshotData['prod_Seleccionados_List']);
    _codigoProducto = snapshotData['codigo_producto'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('venta');

  static Stream<VentaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VentaRecord.fromSnapshot(s));

  static Future<VentaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VentaRecord.fromSnapshot(s));

  static VentaRecord fromSnapshot(DocumentSnapshot snapshot) => VentaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VentaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VentaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VentaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VentaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVentaRecordData({
  DocumentReference? idCliente,
  DocumentReference? idProducto,
  String? descripcion,
  int? cantidad,
  double? precio,
  double? bonificacion,
  String? codigoProducto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Id_Cliente': idCliente,
      'Id_Producto': idProducto,
      'descripcion': descripcion,
      'cantidad': cantidad,
      'precio': precio,
      'bonificacion': bonificacion,
      'codigo_producto': codigoProducto,
    }.withoutNulls,
  );

  return firestoreData;
}

class VentaRecordDocumentEquality implements Equality<VentaRecord> {
  const VentaRecordDocumentEquality();

  @override
  bool equals(VentaRecord? e1, VentaRecord? e2) {
    const listEquality = ListEquality();
    return e1?.idCliente == e2?.idCliente &&
        e1?.idProducto == e2?.idProducto &&
        e1?.descripcion == e2?.descripcion &&
        e1?.cantidad == e2?.cantidad &&
        e1?.precio == e2?.precio &&
        e1?.bonificacion == e2?.bonificacion &&
        listEquality.equals(
            e1?.prodSeleccionadosList, e2?.prodSeleccionadosList) &&
        e1?.codigoProducto == e2?.codigoProducto;
  }

  @override
  int hash(VentaRecord? e) => const ListEquality().hash([
        e?.idCliente,
        e?.idProducto,
        e?.descripcion,
        e?.cantidad,
        e?.precio,
        e?.bonificacion,
        e?.prodSeleccionadosList,
        e?.codigoProducto
      ]);

  @override
  bool isValidKey(Object? o) => o is VentaRecord;
}

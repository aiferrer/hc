// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductosxfacturaStruct extends FFFirebaseStruct {
  ProductosxfacturaStruct({
    String? descripcion,
    int? cantidad,
    double? precio,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _descripcion = descripcion,
        _cantidad = cantidad,
        _precio = precio,
        super(firestoreUtilData);

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  set descripcion(String? val) => _descripcion = val;
  bool hasDescripcion() => _descripcion != null;

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  set cantidad(int? val) => _cantidad = val;
  void incrementCantidad(int amount) => _cantidad = cantidad + amount;
  bool hasCantidad() => _cantidad != null;

  // "precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  set precio(double? val) => _precio = val;
  void incrementPrecio(double amount) => _precio = precio + amount;
  bool hasPrecio() => _precio != null;

  static ProductosxfacturaStruct fromMap(Map<String, dynamic> data) =>
      ProductosxfacturaStruct(
        descripcion: data['descripcion'] as String?,
        cantidad: castToType<int>(data['cantidad']),
        precio: castToType<double>(data['precio']),
      );

  static ProductosxfacturaStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic>
          ? ProductosxfacturaStruct.fromMap(data)
          : null;

  Map<String, dynamic> toMap() => {
        'descripcion': _descripcion,
        'cantidad': _cantidad,
        'precio': _precio,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'descripcion': serializeParam(
          _descripcion,
          ParamType.String,
        ),
        'cantidad': serializeParam(
          _cantidad,
          ParamType.int,
        ),
        'precio': serializeParam(
          _precio,
          ParamType.double,
        ),
      }.withoutNulls;

  static ProductosxfacturaStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ProductosxfacturaStruct(
        descripcion: deserializeParam(
          data['descripcion'],
          ParamType.String,
          false,
        ),
        cantidad: deserializeParam(
          data['cantidad'],
          ParamType.int,
          false,
        ),
        precio: deserializeParam(
          data['precio'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ProductosxfacturaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductosxfacturaStruct &&
        descripcion == other.descripcion &&
        cantidad == other.cantidad &&
        precio == other.precio;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([descripcion, cantidad, precio]);
}

ProductosxfacturaStruct createProductosxfacturaStruct({
  String? descripcion,
  int? cantidad,
  double? precio,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProductosxfacturaStruct(
      descripcion: descripcion,
      cantidad: cantidad,
      precio: precio,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProductosxfacturaStruct? updateProductosxfacturaStruct(
  ProductosxfacturaStruct? productosxfactura, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    productosxfactura
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProductosxfacturaStructData(
  Map<String, dynamic> firestoreData,
  ProductosxfacturaStruct? productosxfactura,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (productosxfactura == null) {
    return;
  }
  if (productosxfactura.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && productosxfactura.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final productosxfacturaData =
      getProductosxfacturaFirestoreData(productosxfactura, forFieldValue);
  final nestedData =
      productosxfacturaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = productosxfactura.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProductosxfacturaFirestoreData(
  ProductosxfacturaStruct? productosxfactura, [
  bool forFieldValue = false,
]) {
  if (productosxfactura == null) {
    return {};
  }
  final firestoreData = mapToFirestore(productosxfactura.toMap());

  // Add any Firestore field values
  productosxfactura.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProductosxfacturaListFirestoreData(
  List<ProductosxfacturaStruct>? productosxfacturas,
) =>
    productosxfacturas
        ?.map((e) => getProductosxfacturaFirestoreData(e, true))
        .toList() ??
    [];

import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HistorialProductoRecord extends FirestoreRecord {
  HistorialProductoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Hist_Descripcion" field.
  String? _histDescripcion;
  String get histDescripcion => _histDescripcion ?? '';
  bool hasHistDescripcion() => _histDescripcion != null;

  // "Hist_Precio" field.
  double? _histPrecio;
  double get histPrecio => _histPrecio ?? 0.0;
  bool hasHistPrecio() => _histPrecio != null;

  // "Hist_Motivo" field.
  String? _histMotivo;
  String get histMotivo => _histMotivo ?? '';
  bool hasHistMotivo() => _histMotivo != null;

  // "Hist_Categoria" field.
  String? _histCategoria;
  String get histCategoria => _histCategoria ?? '';
  bool hasHistCategoria() => _histCategoria != null;

  // "Hist_Fecha" field.
  DateTime? _histFecha;
  DateTime? get histFecha => _histFecha;
  bool hasHistFecha() => _histFecha != null;

  void _initializeFields() {
    _histDescripcion = snapshotData['Hist_Descripcion'] as String?;
    _histPrecio = castToType<double>(snapshotData['Hist_Precio']);
    _histMotivo = snapshotData['Hist_Motivo'] as String?;
    _histCategoria = snapshotData['Hist_Categoria'] as String?;
    _histFecha = snapshotData['Hist_Fecha'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Historial_Producto');

  static Stream<HistorialProductoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HistorialProductoRecord.fromSnapshot(s));

  static Future<HistorialProductoRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => HistorialProductoRecord.fromSnapshot(s));

  static HistorialProductoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HistorialProductoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HistorialProductoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HistorialProductoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HistorialProductoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HistorialProductoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHistorialProductoRecordData({
  String? histDescripcion,
  double? histPrecio,
  String? histMotivo,
  String? histCategoria,
  DateTime? histFecha,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Hist_Descripcion': histDescripcion,
      'Hist_Precio': histPrecio,
      'Hist_Motivo': histMotivo,
      'Hist_Categoria': histCategoria,
      'Hist_Fecha': histFecha,
    }.withoutNulls,
  );

  return firestoreData;
}

class HistorialProductoRecordDocumentEquality
    implements Equality<HistorialProductoRecord> {
  const HistorialProductoRecordDocumentEquality();

  @override
  bool equals(HistorialProductoRecord? e1, HistorialProductoRecord? e2) {
    return e1?.histDescripcion == e2?.histDescripcion &&
        e1?.histPrecio == e2?.histPrecio &&
        e1?.histMotivo == e2?.histMotivo &&
        e1?.histCategoria == e2?.histCategoria &&
        e1?.histFecha == e2?.histFecha;
  }

  @override
  int hash(HistorialProductoRecord? e) => const ListEquality().hash([
        e?.histDescripcion,
        e?.histPrecio,
        e?.histMotivo,
        e?.histCategoria,
        e?.histFecha
      ]);

  @override
  bool isValidKey(Object? o) => o is HistorialProductoRecord;
}

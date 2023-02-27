import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'direccion_record.g.dart';

abstract class DireccionRecord
    implements Built<DireccionRecord, DireccionRecordBuilder> {
  static Serializer<DireccionRecord> get serializer =>
      _$direccionRecordSerializer;

  @BuiltValueField(wireName: 'Id_Cliente')
  DocumentReference? get idCliente;

  @BuiltValueField(wireName: 'Direccion')
  String? get direccion;

  @BuiltValueField(wireName: 'Altura')
  String? get altura;

  @BuiltValueField(wireName: 'Piso')
  String? get piso;

  @BuiltValueField(wireName: 'Dpto')
  String? get dpto;

  @BuiltValueField(wireName: 'Barrio')
  String? get barrio;

  @BuiltValueField(wireName: 'Ciudad')
  String? get ciudad;

  @BuiltValueField(wireName: 'Provincia')
  String? get provincia;

  @BuiltValueField(wireName: 'Pais')
  String? get pais;

  @BuiltValueField(wireName: 'CP')
  String? get cp;

  @BuiltValueField(wireName: 'Tipo_Direccion')
  String? get tipoDireccion;

  @BuiltValueField(wireName: 'Ubicacion')
  LatLng? get ubicacion;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(DireccionRecordBuilder builder) => builder
    ..direccion = ''
    ..altura = ''
    ..piso = ''
    ..dpto = ''
    ..barrio = ''
    ..ciudad = ''
    ..provincia = ''
    ..pais = ''
    ..cp = ''
    ..tipoDireccion = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Direccion')
          : FirebaseFirestore.instance.collectionGroup('Direccion');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('Direccion').doc();

  static Stream<DireccionRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DireccionRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DireccionRecord._();
  factory DireccionRecord([void Function(DireccionRecordBuilder) updates]) =
      _$DireccionRecord;

  static DireccionRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDireccionRecordData({
  DocumentReference? idCliente,
  String? direccion,
  String? altura,
  String? piso,
  String? dpto,
  String? barrio,
  String? ciudad,
  String? provincia,
  String? pais,
  String? cp,
  String? tipoDireccion,
  LatLng? ubicacion,
}) {
  final firestoreData = serializers.toFirestore(
    DireccionRecord.serializer,
    DireccionRecord(
      (d) => d
        ..idCliente = idCliente
        ..direccion = direccion
        ..altura = altura
        ..piso = piso
        ..dpto = dpto
        ..barrio = barrio
        ..ciudad = ciudad
        ..provincia = provincia
        ..pais = pais
        ..cp = cp
        ..tipoDireccion = tipoDireccion
        ..ubicacion = ubicacion,
    ),
  );

  return firestoreData;
}

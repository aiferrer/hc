import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'direcciones_retiro_envio_record.g.dart';

abstract class DireccionesRetiroEnvioRecord
    implements
        Built<DireccionesRetiroEnvioRecord,
            DireccionesRetiroEnvioRecordBuilder> {
  static Serializer<DireccionesRetiroEnvioRecord> get serializer =>
      _$direccionesRetiroEnvioRecordSerializer;

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

  static void _initializeBuilder(DireccionesRetiroEnvioRecordBuilder builder) =>
      builder
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

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Direcciones_Retiro_Envio');

  static Stream<DireccionesRetiroEnvioRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DireccionesRetiroEnvioRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DireccionesRetiroEnvioRecord._();
  factory DireccionesRetiroEnvioRecord(
          [void Function(DireccionesRetiroEnvioRecordBuilder) updates]) =
      _$DireccionesRetiroEnvioRecord;

  static DireccionesRetiroEnvioRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDireccionesRetiroEnvioRecordData({
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
    DireccionesRetiroEnvioRecord.serializer,
    DireccionesRetiroEnvioRecord(
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

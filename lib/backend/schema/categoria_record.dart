import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'categoria_record.g.dart';

abstract class CategoriaRecord
    implements Built<CategoriaRecord, CategoriaRecordBuilder> {
  static Serializer<CategoriaRecord> get serializer =>
      _$categoriaRecordSerializer;

  @BuiltValueField(wireName: 'Categoria')
  String? get categoria;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CategoriaRecordBuilder builder) =>
      builder..categoria = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Categoria');

  static Stream<CategoriaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CategoriaRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CategoriaRecord._();
  factory CategoriaRecord([void Function(CategoriaRecordBuilder) updates]) =
      _$CategoriaRecord;

  static CategoriaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCategoriaRecordData({
  String? categoria,
}) {
  final firestoreData = serializers.toFirestore(
    CategoriaRecord.serializer,
    CategoriaRecord(
      (c) => c..categoria = categoria,
    ),
  );

  return firestoreData;
}

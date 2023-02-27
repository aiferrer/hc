// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fecha_estado_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FechaEstadoRecord> _$fechaEstadoRecordSerializer =
    new _$FechaEstadoRecordSerializer();

class _$FechaEstadoRecordSerializer
    implements StructuredSerializer<FechaEstadoRecord> {
  @override
  final Iterable<Type> types = const [FechaEstadoRecord, _$FechaEstadoRecord];
  @override
  final String wireName = 'FechaEstadoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FechaEstadoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.fechaEstado;
    if (value != null) {
      result
        ..add('Fecha_Estado')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.estado;
    if (value != null) {
      result
        ..add('Estado')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  FechaEstadoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FechaEstadoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Fecha_Estado':
          result.fechaEstado = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Estado':
          result.estado = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$FechaEstadoRecord extends FechaEstadoRecord {
  @override
  final DateTime? fechaEstado;
  @override
  final String? estado;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FechaEstadoRecord(
          [void Function(FechaEstadoRecordBuilder)? updates]) =>
      (new FechaEstadoRecordBuilder()..update(updates))._build();

  _$FechaEstadoRecord._({this.fechaEstado, this.estado, this.ffRef})
      : super._();

  @override
  FechaEstadoRecord rebuild(void Function(FechaEstadoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FechaEstadoRecordBuilder toBuilder() =>
      new FechaEstadoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FechaEstadoRecord &&
        fechaEstado == other.fechaEstado &&
        estado == other.estado &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, fechaEstado.hashCode), estado.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FechaEstadoRecord')
          ..add('fechaEstado', fechaEstado)
          ..add('estado', estado)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FechaEstadoRecordBuilder
    implements Builder<FechaEstadoRecord, FechaEstadoRecordBuilder> {
  _$FechaEstadoRecord? _$v;

  DateTime? _fechaEstado;
  DateTime? get fechaEstado => _$this._fechaEstado;
  set fechaEstado(DateTime? fechaEstado) => _$this._fechaEstado = fechaEstado;

  String? _estado;
  String? get estado => _$this._estado;
  set estado(String? estado) => _$this._estado = estado;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FechaEstadoRecordBuilder() {
    FechaEstadoRecord._initializeBuilder(this);
  }

  FechaEstadoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fechaEstado = $v.fechaEstado;
      _estado = $v.estado;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FechaEstadoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FechaEstadoRecord;
  }

  @override
  void update(void Function(FechaEstadoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FechaEstadoRecord build() => _build();

  _$FechaEstadoRecord _build() {
    final _$result = _$v ??
        new _$FechaEstadoRecord._(
            fechaEstado: fechaEstado, estado: estado, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

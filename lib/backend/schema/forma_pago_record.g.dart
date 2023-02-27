// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forma_pago_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FormaPagoRecord> _$formaPagoRecordSerializer =
    new _$FormaPagoRecordSerializer();

class _$FormaPagoRecordSerializer
    implements StructuredSerializer<FormaPagoRecord> {
  @override
  final Iterable<Type> types = const [FormaPagoRecord, _$FormaPagoRecord];
  @override
  final String wireName = 'FormaPagoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, FormaPagoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.efectivo;
    if (value != null) {
      result
        ..add('Efectivo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.transferencia;
    if (value != null) {
      result
        ..add('Transferencia')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
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
  FormaPagoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FormaPagoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Efectivo':
          result.efectivo = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Transferencia':
          result.transferencia = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
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

class _$FormaPagoRecord extends FormaPagoRecord {
  @override
  final double? efectivo;
  @override
  final double? transferencia;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FormaPagoRecord([void Function(FormaPagoRecordBuilder)? updates]) =>
      (new FormaPagoRecordBuilder()..update(updates))._build();

  _$FormaPagoRecord._({this.efectivo, this.transferencia, this.ffRef})
      : super._();

  @override
  FormaPagoRecord rebuild(void Function(FormaPagoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FormaPagoRecordBuilder toBuilder() =>
      new FormaPagoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FormaPagoRecord &&
        efectivo == other.efectivo &&
        transferencia == other.transferencia &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, efectivo.hashCode), transferencia.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FormaPagoRecord')
          ..add('efectivo', efectivo)
          ..add('transferencia', transferencia)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FormaPagoRecordBuilder
    implements Builder<FormaPagoRecord, FormaPagoRecordBuilder> {
  _$FormaPagoRecord? _$v;

  double? _efectivo;
  double? get efectivo => _$this._efectivo;
  set efectivo(double? efectivo) => _$this._efectivo = efectivo;

  double? _transferencia;
  double? get transferencia => _$this._transferencia;
  set transferencia(double? transferencia) =>
      _$this._transferencia = transferencia;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FormaPagoRecordBuilder() {
    FormaPagoRecord._initializeBuilder(this);
  }

  FormaPagoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _efectivo = $v.efectivo;
      _transferencia = $v.transferencia;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FormaPagoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FormaPagoRecord;
  }

  @override
  void update(void Function(FormaPagoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FormaPagoRecord build() => _build();

  _$FormaPagoRecord _build() {
    final _$result = _$v ??
        new _$FormaPagoRecord._(
            efectivo: efectivo, transferencia: transferencia, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

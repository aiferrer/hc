// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moneda_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MonedaRecord> _$monedaRecordSerializer =
    new _$MonedaRecordSerializer();

class _$MonedaRecordSerializer implements StructuredSerializer<MonedaRecord> {
  @override
  final Iterable<Type> types = const [MonedaRecord, _$MonedaRecord];
  @override
  final String wireName = 'MonedaRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MonedaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.moneda;
    if (value != null) {
      result
        ..add('Moneda')
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
  MonedaRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MonedaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Moneda':
          result.moneda = serializers.deserialize(value,
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

class _$MonedaRecord extends MonedaRecord {
  @override
  final String? moneda;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MonedaRecord([void Function(MonedaRecordBuilder)? updates]) =>
      (new MonedaRecordBuilder()..update(updates))._build();

  _$MonedaRecord._({this.moneda, this.ffRef}) : super._();

  @override
  MonedaRecord rebuild(void Function(MonedaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MonedaRecordBuilder toBuilder() => new MonedaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MonedaRecord &&
        moneda == other.moneda &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, moneda.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MonedaRecord')
          ..add('moneda', moneda)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MonedaRecordBuilder
    implements Builder<MonedaRecord, MonedaRecordBuilder> {
  _$MonedaRecord? _$v;

  String? _moneda;
  String? get moneda => _$this._moneda;
  set moneda(String? moneda) => _$this._moneda = moneda;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MonedaRecordBuilder() {
    MonedaRecord._initializeBuilder(this);
  }

  MonedaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _moneda = $v.moneda;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MonedaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MonedaRecord;
  }

  @override
  void update(void Function(MonedaRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MonedaRecord build() => _build();

  _$MonedaRecord _build() {
    final _$result = _$v ?? new _$MonedaRecord._(moneda: moneda, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

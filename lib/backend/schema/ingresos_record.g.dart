// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingresos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<IngresosRecord> _$ingresosRecordSerializer =
    new _$IngresosRecordSerializer();

class _$IngresosRecordSerializer
    implements StructuredSerializer<IngresosRecord> {
  @override
  final Iterable<Type> types = const [IngresosRecord, _$IngresosRecord];
  @override
  final String wireName = 'IngresosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, IngresosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.fechaIngreso;
    if (value != null) {
      result
        ..add('Fecha_Ingreso')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.concepto;
    if (value != null) {
      result
        ..add('Concepto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.montoTotal;
    if (value != null) {
      result
        ..add('Monto_Total')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.comision;
    if (value != null) {
      result
        ..add('Comision')
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
  IngresosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IngresosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Fecha_Ingreso':
          result.fechaIngreso = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Concepto':
          result.concepto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Monto_Total':
          result.montoTotal = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Comision':
          result.comision = serializers.deserialize(value,
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

class _$IngresosRecord extends IngresosRecord {
  @override
  final DateTime? fechaIngreso;
  @override
  final String? concepto;
  @override
  final double? montoTotal;
  @override
  final double? comision;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$IngresosRecord([void Function(IngresosRecordBuilder)? updates]) =>
      (new IngresosRecordBuilder()..update(updates))._build();

  _$IngresosRecord._(
      {this.fechaIngreso,
      this.concepto,
      this.montoTotal,
      this.comision,
      this.ffRef})
      : super._();

  @override
  IngresosRecord rebuild(void Function(IngresosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IngresosRecordBuilder toBuilder() =>
      new IngresosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is IngresosRecord &&
        fechaIngreso == other.fechaIngreso &&
        concepto == other.concepto &&
        montoTotal == other.montoTotal &&
        comision == other.comision &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, fechaIngreso.hashCode), concepto.hashCode),
                montoTotal.hashCode),
            comision.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'IngresosRecord')
          ..add('fechaIngreso', fechaIngreso)
          ..add('concepto', concepto)
          ..add('montoTotal', montoTotal)
          ..add('comision', comision)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class IngresosRecordBuilder
    implements Builder<IngresosRecord, IngresosRecordBuilder> {
  _$IngresosRecord? _$v;

  DateTime? _fechaIngreso;
  DateTime? get fechaIngreso => _$this._fechaIngreso;
  set fechaIngreso(DateTime? fechaIngreso) =>
      _$this._fechaIngreso = fechaIngreso;

  String? _concepto;
  String? get concepto => _$this._concepto;
  set concepto(String? concepto) => _$this._concepto = concepto;

  double? _montoTotal;
  double? get montoTotal => _$this._montoTotal;
  set montoTotal(double? montoTotal) => _$this._montoTotal = montoTotal;

  double? _comision;
  double? get comision => _$this._comision;
  set comision(double? comision) => _$this._comision = comision;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  IngresosRecordBuilder() {
    IngresosRecord._initializeBuilder(this);
  }

  IngresosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _fechaIngreso = $v.fechaIngreso;
      _concepto = $v.concepto;
      _montoTotal = $v.montoTotal;
      _comision = $v.comision;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(IngresosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$IngresosRecord;
  }

  @override
  void update(void Function(IngresosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  IngresosRecord build() => _build();

  _$IngresosRecord _build() {
    final _$result = _$v ??
        new _$IngresosRecord._(
            fechaIngreso: fechaIngreso,
            concepto: concepto,
            montoTotal: montoTotal,
            comision: comision,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'historial_producto_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HistorialProductoRecord> _$historialProductoRecordSerializer =
    new _$HistorialProductoRecordSerializer();

class _$HistorialProductoRecordSerializer
    implements StructuredSerializer<HistorialProductoRecord> {
  @override
  final Iterable<Type> types = const [
    HistorialProductoRecord,
    _$HistorialProductoRecord
  ];
  @override
  final String wireName = 'HistorialProductoRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, HistorialProductoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.idHistProd;
    if (value != null) {
      result
        ..add('Id_Hist_Prod')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.histDescripcion;
    if (value != null) {
      result
        ..add('Hist_Descripcion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.histPrecio;
    if (value != null) {
      result
        ..add('Hist_Precio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.histMotivo;
    if (value != null) {
      result
        ..add('Hist_Motivo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.histCategoria;
    if (value != null) {
      result
        ..add('Hist_Categoria')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.histFecha;
    if (value != null) {
      result
        ..add('Hist_Fecha')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.idHistCliente;
    if (value != null) {
      result
        ..add('Id_Hist_Cliente')
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
  HistorialProductoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HistorialProductoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Id_Hist_Prod':
          result.idHistProd = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Hist_Descripcion':
          result.histDescripcion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Hist_Precio':
          result.histPrecio = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Hist_Motivo':
          result.histMotivo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Hist_Categoria':
          result.histCategoria = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Hist_Fecha':
          result.histFecha = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Id_Hist_Cliente':
          result.idHistCliente = serializers.deserialize(value,
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

class _$HistorialProductoRecord extends HistorialProductoRecord {
  @override
  final DocumentReference<Object?>? idHistProd;
  @override
  final String? histDescripcion;
  @override
  final double? histPrecio;
  @override
  final String? histMotivo;
  @override
  final String? histCategoria;
  @override
  final DateTime? histFecha;
  @override
  final String? idHistCliente;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$HistorialProductoRecord(
          [void Function(HistorialProductoRecordBuilder)? updates]) =>
      (new HistorialProductoRecordBuilder()..update(updates))._build();

  _$HistorialProductoRecord._(
      {this.idHistProd,
      this.histDescripcion,
      this.histPrecio,
      this.histMotivo,
      this.histCategoria,
      this.histFecha,
      this.idHistCliente,
      this.ffRef})
      : super._();

  @override
  HistorialProductoRecord rebuild(
          void Function(HistorialProductoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HistorialProductoRecordBuilder toBuilder() =>
      new HistorialProductoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HistorialProductoRecord &&
        idHistProd == other.idHistProd &&
        histDescripcion == other.histDescripcion &&
        histPrecio == other.histPrecio &&
        histMotivo == other.histMotivo &&
        histCategoria == other.histCategoria &&
        histFecha == other.histFecha &&
        idHistCliente == other.idHistCliente &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, idHistProd.hashCode),
                                histDescripcion.hashCode),
                            histPrecio.hashCode),
                        histMotivo.hashCode),
                    histCategoria.hashCode),
                histFecha.hashCode),
            idHistCliente.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'HistorialProductoRecord')
          ..add('idHistProd', idHistProd)
          ..add('histDescripcion', histDescripcion)
          ..add('histPrecio', histPrecio)
          ..add('histMotivo', histMotivo)
          ..add('histCategoria', histCategoria)
          ..add('histFecha', histFecha)
          ..add('idHistCliente', idHistCliente)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class HistorialProductoRecordBuilder
    implements
        Builder<HistorialProductoRecord, HistorialProductoRecordBuilder> {
  _$HistorialProductoRecord? _$v;

  DocumentReference<Object?>? _idHistProd;
  DocumentReference<Object?>? get idHistProd => _$this._idHistProd;
  set idHistProd(DocumentReference<Object?>? idHistProd) =>
      _$this._idHistProd = idHistProd;

  String? _histDescripcion;
  String? get histDescripcion => _$this._histDescripcion;
  set histDescripcion(String? histDescripcion) =>
      _$this._histDescripcion = histDescripcion;

  double? _histPrecio;
  double? get histPrecio => _$this._histPrecio;
  set histPrecio(double? histPrecio) => _$this._histPrecio = histPrecio;

  String? _histMotivo;
  String? get histMotivo => _$this._histMotivo;
  set histMotivo(String? histMotivo) => _$this._histMotivo = histMotivo;

  String? _histCategoria;
  String? get histCategoria => _$this._histCategoria;
  set histCategoria(String? histCategoria) =>
      _$this._histCategoria = histCategoria;

  DateTime? _histFecha;
  DateTime? get histFecha => _$this._histFecha;
  set histFecha(DateTime? histFecha) => _$this._histFecha = histFecha;

  String? _idHistCliente;
  String? get idHistCliente => _$this._idHistCliente;
  set idHistCliente(String? idHistCliente) =>
      _$this._idHistCliente = idHistCliente;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  HistorialProductoRecordBuilder() {
    HistorialProductoRecord._initializeBuilder(this);
  }

  HistorialProductoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idHistProd = $v.idHistProd;
      _histDescripcion = $v.histDescripcion;
      _histPrecio = $v.histPrecio;
      _histMotivo = $v.histMotivo;
      _histCategoria = $v.histCategoria;
      _histFecha = $v.histFecha;
      _idHistCliente = $v.idHistCliente;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HistorialProductoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HistorialProductoRecord;
  }

  @override
  void update(void Function(HistorialProductoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  HistorialProductoRecord build() => _build();

  _$HistorialProductoRecord _build() {
    final _$result = _$v ??
        new _$HistorialProductoRecord._(
            idHistProd: idHistProd,
            histDescripcion: histDescripcion,
            histPrecio: histPrecio,
            histMotivo: histMotivo,
            histCategoria: histCategoria,
            histFecha: histFecha,
            idHistCliente: idHistCliente,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

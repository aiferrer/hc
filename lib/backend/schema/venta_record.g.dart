// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'venta_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VentaRecord> _$ventaRecordSerializer = new _$VentaRecordSerializer();

class _$VentaRecordSerializer implements StructuredSerializer<VentaRecord> {
  @override
  final Iterable<Type> types = const [VentaRecord, _$VentaRecord];
  @override
  final String wireName = 'VentaRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, VentaRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.idCliente;
    if (value != null) {
      result
        ..add('Id_Cliente')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.idProducto;
    if (value != null) {
      result
        ..add('Id_Producto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.descripcion;
    if (value != null) {
      result
        ..add('descripcion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cantidad;
    if (value != null) {
      result
        ..add('cantidad')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.precio;
    if (value != null) {
      result
        ..add('precio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.bonificacion;
    if (value != null) {
      result
        ..add('bonificacion')
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
  VentaRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VentaRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Id_Cliente':
          result.idCliente = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Id_Producto':
          result.idProducto = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'descripcion':
          result.descripcion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cantidad':
          result.cantidad = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'precio':
          result.precio = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'bonificacion':
          result.bonificacion = serializers.deserialize(value,
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

class _$VentaRecord extends VentaRecord {
  @override
  final DocumentReference<Object?>? idCliente;
  @override
  final DocumentReference<Object?>? idProducto;
  @override
  final String? descripcion;
  @override
  final int? cantidad;
  @override
  final double? precio;
  @override
  final double? bonificacion;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$VentaRecord([void Function(VentaRecordBuilder)? updates]) =>
      (new VentaRecordBuilder()..update(updates))._build();

  _$VentaRecord._(
      {this.idCliente,
      this.idProducto,
      this.descripcion,
      this.cantidad,
      this.precio,
      this.bonificacion,
      this.ffRef})
      : super._();

  @override
  VentaRecord rebuild(void Function(VentaRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VentaRecordBuilder toBuilder() => new VentaRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VentaRecord &&
        idCliente == other.idCliente &&
        idProducto == other.idProducto &&
        descripcion == other.descripcion &&
        cantidad == other.cantidad &&
        precio == other.precio &&
        bonificacion == other.bonificacion &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, idCliente.hashCode), idProducto.hashCode),
                        descripcion.hashCode),
                    cantidad.hashCode),
                precio.hashCode),
            bonificacion.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VentaRecord')
          ..add('idCliente', idCliente)
          ..add('idProducto', idProducto)
          ..add('descripcion', descripcion)
          ..add('cantidad', cantidad)
          ..add('precio', precio)
          ..add('bonificacion', bonificacion)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class VentaRecordBuilder implements Builder<VentaRecord, VentaRecordBuilder> {
  _$VentaRecord? _$v;

  DocumentReference<Object?>? _idCliente;
  DocumentReference<Object?>? get idCliente => _$this._idCliente;
  set idCliente(DocumentReference<Object?>? idCliente) =>
      _$this._idCliente = idCliente;

  DocumentReference<Object?>? _idProducto;
  DocumentReference<Object?>? get idProducto => _$this._idProducto;
  set idProducto(DocumentReference<Object?>? idProducto) =>
      _$this._idProducto = idProducto;

  String? _descripcion;
  String? get descripcion => _$this._descripcion;
  set descripcion(String? descripcion) => _$this._descripcion = descripcion;

  int? _cantidad;
  int? get cantidad => _$this._cantidad;
  set cantidad(int? cantidad) => _$this._cantidad = cantidad;

  double? _precio;
  double? get precio => _$this._precio;
  set precio(double? precio) => _$this._precio = precio;

  double? _bonificacion;
  double? get bonificacion => _$this._bonificacion;
  set bonificacion(double? bonificacion) => _$this._bonificacion = bonificacion;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  VentaRecordBuilder() {
    VentaRecord._initializeBuilder(this);
  }

  VentaRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idCliente = $v.idCliente;
      _idProducto = $v.idProducto;
      _descripcion = $v.descripcion;
      _cantidad = $v.cantidad;
      _precio = $v.precio;
      _bonificacion = $v.bonificacion;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VentaRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VentaRecord;
  }

  @override
  void update(void Function(VentaRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VentaRecord build() => _build();

  _$VentaRecord _build() {
    final _$result = _$v ??
        new _$VentaRecord._(
            idCliente: idCliente,
            idProducto: idProducto,
            descripcion: descripcion,
            cantidad: cantidad,
            precio: precio,
            bonificacion: bonificacion,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

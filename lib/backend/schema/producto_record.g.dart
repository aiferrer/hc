// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'producto_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductoRecord> _$productoRecordSerializer =
    new _$ProductoRecordSerializer();

class _$ProductoRecordSerializer
    implements StructuredSerializer<ProductoRecord> {
  @override
  final Iterable<Type> types = const [ProductoRecord, _$ProductoRecord];
  @override
  final String wireName = 'ProductoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProductoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.idCliente;
    if (value != null) {
      result
        ..add('Id_Cliente')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descripcion;
    if (value != null) {
      result
        ..add('Descripcion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fotoOriginal;
    if (value != null) {
      result
        ..add('Foto_Original')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ancho;
    if (value != null) {
      result
        ..add('Ancho')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.alto;
    if (value != null) {
      result
        ..add('Alto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.profundidad;
    if (value != null) {
      result
        ..add('Profundidad')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.cantidad;
    if (value != null) {
      result
        ..add('Cantidad')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.codigoProducto;
    if (value != null) {
      result
        ..add('Codigo_Producto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.precio;
    if (value != null) {
      result
        ..add('Precio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.moneda;
    if (value != null) {
      result
        ..add('Moneda')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prodPotencial;
    if (value != null) {
      result
        ..add('Prod_Potencial')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.estadoProducto;
    if (value != null) {
      result
        ..add('Estado_Producto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.estadoProceso;
    if (value != null) {
      result
        ..add('Estado_Proceso')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.categoria;
    if (value != null) {
      result
        ..add('Categoria')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fechaBaja;
    if (value != null) {
      result
        ..add('Fecha_Baja')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.fechaAlta;
    if (value != null) {
      result
        ..add('Fecha_Alta')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  ProductoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Id_Cliente':
          result.idCliente = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Descripcion':
          result.descripcion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Foto_Original':
          result.fotoOriginal = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Ancho':
          result.ancho = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Alto':
          result.alto = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Profundidad':
          result.profundidad = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Cantidad':
          result.cantidad = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Codigo_Producto':
          result.codigoProducto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Precio':
          result.precio = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Moneda':
          result.moneda = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Prod_Potencial':
          result.prodPotencial = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Estado_Producto':
          result.estadoProducto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Estado_Proceso':
          result.estadoProceso = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Categoria':
          result.categoria = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Fecha_Baja':
          result.fechaBaja = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Fecha_Alta':
          result.fechaAlta = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$ProductoRecord extends ProductoRecord {
  @override
  final String? idCliente;
  @override
  final String? descripcion;
  @override
  final String? fotoOriginal;
  @override
  final double? ancho;
  @override
  final double? alto;
  @override
  final double? profundidad;
  @override
  final int? cantidad;
  @override
  final String? codigoProducto;
  @override
  final double? precio;
  @override
  final String? moneda;
  @override
  final bool? prodPotencial;
  @override
  final String? estadoProducto;
  @override
  final String? estadoProceso;
  @override
  final String? categoria;
  @override
  final DateTime? fechaBaja;
  @override
  final DateTime? fechaAlta;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProductoRecord([void Function(ProductoRecordBuilder)? updates]) =>
      (new ProductoRecordBuilder()..update(updates))._build();

  _$ProductoRecord._(
      {this.idCliente,
      this.descripcion,
      this.fotoOriginal,
      this.ancho,
      this.alto,
      this.profundidad,
      this.cantidad,
      this.codigoProducto,
      this.precio,
      this.moneda,
      this.prodPotencial,
      this.estadoProducto,
      this.estadoProceso,
      this.categoria,
      this.fechaBaja,
      this.fechaAlta,
      this.ffRef})
      : super._();

  @override
  ProductoRecord rebuild(void Function(ProductoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductoRecordBuilder toBuilder() =>
      new ProductoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductoRecord &&
        idCliente == other.idCliente &&
        descripcion == other.descripcion &&
        fotoOriginal == other.fotoOriginal &&
        ancho == other.ancho &&
        alto == other.alto &&
        profundidad == other.profundidad &&
        cantidad == other.cantidad &&
        codigoProducto == other.codigoProducto &&
        precio == other.precio &&
        moneda == other.moneda &&
        prodPotencial == other.prodPotencial &&
        estadoProducto == other.estadoProducto &&
        estadoProceso == other.estadoProceso &&
        categoria == other.categoria &&
        fechaBaja == other.fechaBaja &&
        fechaAlta == other.fechaAlta &&
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
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        0,
                                                                        idCliente
                                                                            .hashCode),
                                                                    descripcion
                                                                        .hashCode),
                                                                fotoOriginal
                                                                    .hashCode),
                                                            ancho.hashCode),
                                                        alto.hashCode),
                                                    profundidad.hashCode),
                                                cantidad.hashCode),
                                            codigoProducto.hashCode),
                                        precio.hashCode),
                                    moneda.hashCode),
                                prodPotencial.hashCode),
                            estadoProducto.hashCode),
                        estadoProceso.hashCode),
                    categoria.hashCode),
                fechaBaja.hashCode),
            fechaAlta.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductoRecord')
          ..add('idCliente', idCliente)
          ..add('descripcion', descripcion)
          ..add('fotoOriginal', fotoOriginal)
          ..add('ancho', ancho)
          ..add('alto', alto)
          ..add('profundidad', profundidad)
          ..add('cantidad', cantidad)
          ..add('codigoProducto', codigoProducto)
          ..add('precio', precio)
          ..add('moneda', moneda)
          ..add('prodPotencial', prodPotencial)
          ..add('estadoProducto', estadoProducto)
          ..add('estadoProceso', estadoProceso)
          ..add('categoria', categoria)
          ..add('fechaBaja', fechaBaja)
          ..add('fechaAlta', fechaAlta)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProductoRecordBuilder
    implements Builder<ProductoRecord, ProductoRecordBuilder> {
  _$ProductoRecord? _$v;

  String? _idCliente;
  String? get idCliente => _$this._idCliente;
  set idCliente(String? idCliente) => _$this._idCliente = idCliente;

  String? _descripcion;
  String? get descripcion => _$this._descripcion;
  set descripcion(String? descripcion) => _$this._descripcion = descripcion;

  String? _fotoOriginal;
  String? get fotoOriginal => _$this._fotoOriginal;
  set fotoOriginal(String? fotoOriginal) => _$this._fotoOriginal = fotoOriginal;

  double? _ancho;
  double? get ancho => _$this._ancho;
  set ancho(double? ancho) => _$this._ancho = ancho;

  double? _alto;
  double? get alto => _$this._alto;
  set alto(double? alto) => _$this._alto = alto;

  double? _profundidad;
  double? get profundidad => _$this._profundidad;
  set profundidad(double? profundidad) => _$this._profundidad = profundidad;

  int? _cantidad;
  int? get cantidad => _$this._cantidad;
  set cantidad(int? cantidad) => _$this._cantidad = cantidad;

  String? _codigoProducto;
  String? get codigoProducto => _$this._codigoProducto;
  set codigoProducto(String? codigoProducto) =>
      _$this._codigoProducto = codigoProducto;

  double? _precio;
  double? get precio => _$this._precio;
  set precio(double? precio) => _$this._precio = precio;

  String? _moneda;
  String? get moneda => _$this._moneda;
  set moneda(String? moneda) => _$this._moneda = moneda;

  bool? _prodPotencial;
  bool? get prodPotencial => _$this._prodPotencial;
  set prodPotencial(bool? prodPotencial) =>
      _$this._prodPotencial = prodPotencial;

  String? _estadoProducto;
  String? get estadoProducto => _$this._estadoProducto;
  set estadoProducto(String? estadoProducto) =>
      _$this._estadoProducto = estadoProducto;

  String? _estadoProceso;
  String? get estadoProceso => _$this._estadoProceso;
  set estadoProceso(String? estadoProceso) =>
      _$this._estadoProceso = estadoProceso;

  String? _categoria;
  String? get categoria => _$this._categoria;
  set categoria(String? categoria) => _$this._categoria = categoria;

  DateTime? _fechaBaja;
  DateTime? get fechaBaja => _$this._fechaBaja;
  set fechaBaja(DateTime? fechaBaja) => _$this._fechaBaja = fechaBaja;

  DateTime? _fechaAlta;
  DateTime? get fechaAlta => _$this._fechaAlta;
  set fechaAlta(DateTime? fechaAlta) => _$this._fechaAlta = fechaAlta;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ProductoRecordBuilder() {
    ProductoRecord._initializeBuilder(this);
  }

  ProductoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idCliente = $v.idCliente;
      _descripcion = $v.descripcion;
      _fotoOriginal = $v.fotoOriginal;
      _ancho = $v.ancho;
      _alto = $v.alto;
      _profundidad = $v.profundidad;
      _cantidad = $v.cantidad;
      _codigoProducto = $v.codigoProducto;
      _precio = $v.precio;
      _moneda = $v.moneda;
      _prodPotencial = $v.prodPotencial;
      _estadoProducto = $v.estadoProducto;
      _estadoProceso = $v.estadoProceso;
      _categoria = $v.categoria;
      _fechaBaja = $v.fechaBaja;
      _fechaAlta = $v.fechaAlta;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProductoRecord;
  }

  @override
  void update(void Function(ProductoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductoRecord build() => _build();

  _$ProductoRecord _build() {
    final _$result = _$v ??
        new _$ProductoRecord._(
            idCliente: idCliente,
            descripcion: descripcion,
            fotoOriginal: fotoOriginal,
            ancho: ancho,
            alto: alto,
            profundidad: profundidad,
            cantidad: cantidad,
            codigoProducto: codigoProducto,
            precio: precio,
            moneda: moneda,
            prodPotencial: prodPotencial,
            estadoProducto: estadoProducto,
            estadoProceso: estadoProceso,
            categoria: categoria,
            fechaBaja: fechaBaja,
            fechaAlta: fechaAlta,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

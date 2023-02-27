// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'direcciones_retiro_envio_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DireccionesRetiroEnvioRecord>
    _$direccionesRetiroEnvioRecordSerializer =
    new _$DireccionesRetiroEnvioRecordSerializer();

class _$DireccionesRetiroEnvioRecordSerializer
    implements StructuredSerializer<DireccionesRetiroEnvioRecord> {
  @override
  final Iterable<Type> types = const [
    DireccionesRetiroEnvioRecord,
    _$DireccionesRetiroEnvioRecord
  ];
  @override
  final String wireName = 'DireccionesRetiroEnvioRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DireccionesRetiroEnvioRecord object,
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
    value = object.direccion;
    if (value != null) {
      result
        ..add('Direccion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.altura;
    if (value != null) {
      result
        ..add('Altura')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.piso;
    if (value != null) {
      result
        ..add('Piso')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dpto;
    if (value != null) {
      result
        ..add('Dpto')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.barrio;
    if (value != null) {
      result
        ..add('Barrio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ciudad;
    if (value != null) {
      result
        ..add('Ciudad')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.provincia;
    if (value != null) {
      result
        ..add('Provincia')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pais;
    if (value != null) {
      result
        ..add('Pais')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cp;
    if (value != null) {
      result
        ..add('CP')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tipoDireccion;
    if (value != null) {
      result
        ..add('Tipo_Direccion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ubicacion;
    if (value != null) {
      result
        ..add('Ubicacion')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
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
  DireccionesRetiroEnvioRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DireccionesRetiroEnvioRecordBuilder();

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
        case 'Direccion':
          result.direccion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Altura':
          result.altura = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Piso':
          result.piso = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Dpto':
          result.dpto = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Barrio':
          result.barrio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Ciudad':
          result.ciudad = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Provincia':
          result.provincia = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Pais':
          result.pais = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'CP':
          result.cp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Tipo_Direccion':
          result.tipoDireccion = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Ubicacion':
          result.ubicacion = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
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

class _$DireccionesRetiroEnvioRecord extends DireccionesRetiroEnvioRecord {
  @override
  final DocumentReference<Object?>? idCliente;
  @override
  final String? direccion;
  @override
  final String? altura;
  @override
  final String? piso;
  @override
  final String? dpto;
  @override
  final String? barrio;
  @override
  final String? ciudad;
  @override
  final String? provincia;
  @override
  final String? pais;
  @override
  final String? cp;
  @override
  final String? tipoDireccion;
  @override
  final LatLng? ubicacion;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DireccionesRetiroEnvioRecord(
          [void Function(DireccionesRetiroEnvioRecordBuilder)? updates]) =>
      (new DireccionesRetiroEnvioRecordBuilder()..update(updates))._build();

  _$DireccionesRetiroEnvioRecord._(
      {this.idCliente,
      this.direccion,
      this.altura,
      this.piso,
      this.dpto,
      this.barrio,
      this.ciudad,
      this.provincia,
      this.pais,
      this.cp,
      this.tipoDireccion,
      this.ubicacion,
      this.ffRef})
      : super._();

  @override
  DireccionesRetiroEnvioRecord rebuild(
          void Function(DireccionesRetiroEnvioRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DireccionesRetiroEnvioRecordBuilder toBuilder() =>
      new DireccionesRetiroEnvioRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DireccionesRetiroEnvioRecord &&
        idCliente == other.idCliente &&
        direccion == other.direccion &&
        altura == other.altura &&
        piso == other.piso &&
        dpto == other.dpto &&
        barrio == other.barrio &&
        ciudad == other.ciudad &&
        provincia == other.provincia &&
        pais == other.pais &&
        cp == other.cp &&
        tipoDireccion == other.tipoDireccion &&
        ubicacion == other.ubicacion &&
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
                                                $jc($jc(0, idCliente.hashCode),
                                                    direccion.hashCode),
                                                altura.hashCode),
                                            piso.hashCode),
                                        dpto.hashCode),
                                    barrio.hashCode),
                                ciudad.hashCode),
                            provincia.hashCode),
                        pais.hashCode),
                    cp.hashCode),
                tipoDireccion.hashCode),
            ubicacion.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DireccionesRetiroEnvioRecord')
          ..add('idCliente', idCliente)
          ..add('direccion', direccion)
          ..add('altura', altura)
          ..add('piso', piso)
          ..add('dpto', dpto)
          ..add('barrio', barrio)
          ..add('ciudad', ciudad)
          ..add('provincia', provincia)
          ..add('pais', pais)
          ..add('cp', cp)
          ..add('tipoDireccion', tipoDireccion)
          ..add('ubicacion', ubicacion)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DireccionesRetiroEnvioRecordBuilder
    implements
        Builder<DireccionesRetiroEnvioRecord,
            DireccionesRetiroEnvioRecordBuilder> {
  _$DireccionesRetiroEnvioRecord? _$v;

  DocumentReference<Object?>? _idCliente;
  DocumentReference<Object?>? get idCliente => _$this._idCliente;
  set idCliente(DocumentReference<Object?>? idCliente) =>
      _$this._idCliente = idCliente;

  String? _direccion;
  String? get direccion => _$this._direccion;
  set direccion(String? direccion) => _$this._direccion = direccion;

  String? _altura;
  String? get altura => _$this._altura;
  set altura(String? altura) => _$this._altura = altura;

  String? _piso;
  String? get piso => _$this._piso;
  set piso(String? piso) => _$this._piso = piso;

  String? _dpto;
  String? get dpto => _$this._dpto;
  set dpto(String? dpto) => _$this._dpto = dpto;

  String? _barrio;
  String? get barrio => _$this._barrio;
  set barrio(String? barrio) => _$this._barrio = barrio;

  String? _ciudad;
  String? get ciudad => _$this._ciudad;
  set ciudad(String? ciudad) => _$this._ciudad = ciudad;

  String? _provincia;
  String? get provincia => _$this._provincia;
  set provincia(String? provincia) => _$this._provincia = provincia;

  String? _pais;
  String? get pais => _$this._pais;
  set pais(String? pais) => _$this._pais = pais;

  String? _cp;
  String? get cp => _$this._cp;
  set cp(String? cp) => _$this._cp = cp;

  String? _tipoDireccion;
  String? get tipoDireccion => _$this._tipoDireccion;
  set tipoDireccion(String? tipoDireccion) =>
      _$this._tipoDireccion = tipoDireccion;

  LatLng? _ubicacion;
  LatLng? get ubicacion => _$this._ubicacion;
  set ubicacion(LatLng? ubicacion) => _$this._ubicacion = ubicacion;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DireccionesRetiroEnvioRecordBuilder() {
    DireccionesRetiroEnvioRecord._initializeBuilder(this);
  }

  DireccionesRetiroEnvioRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _idCliente = $v.idCliente;
      _direccion = $v.direccion;
      _altura = $v.altura;
      _piso = $v.piso;
      _dpto = $v.dpto;
      _barrio = $v.barrio;
      _ciudad = $v.ciudad;
      _provincia = $v.provincia;
      _pais = $v.pais;
      _cp = $v.cp;
      _tipoDireccion = $v.tipoDireccion;
      _ubicacion = $v.ubicacion;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DireccionesRetiroEnvioRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DireccionesRetiroEnvioRecord;
  }

  @override
  void update(void Function(DireccionesRetiroEnvioRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DireccionesRetiroEnvioRecord build() => _build();

  _$DireccionesRetiroEnvioRecord _build() {
    final _$result = _$v ??
        new _$DireccionesRetiroEnvioRecord._(
            idCliente: idCliente,
            direccion: direccion,
            altura: altura,
            piso: piso,
            dpto: dpto,
            barrio: barrio,
            ciudad: ciudad,
            provincia: provincia,
            pais: pais,
            cp: cp,
            tipoDireccion: tipoDireccion,
            ubicacion: ubicacion,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

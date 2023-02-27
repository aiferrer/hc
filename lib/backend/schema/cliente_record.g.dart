// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ClienteRecord> _$clienteRecordSerializer =
    new _$ClienteRecordSerializer();

class _$ClienteRecordSerializer implements StructuredSerializer<ClienteRecord> {
  @override
  final Iterable<Type> types = const [ClienteRecord, _$ClienteRecord];
  @override
  final String wireName = 'ClienteRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ClienteRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.nombre;
    if (value != null) {
      result
        ..add('nombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.apellido;
    if (value != null) {
      result
        ..add('apellido')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.telefonoContacto;
    if (value != null) {
      result
        ..add('telefono_contacto')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.dni;
    if (value != null) {
      result
        ..add('dni')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.referencia;
    if (value != null) {
      result
        ..add('referencia')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.direccion;
    if (value != null) {
      result
        ..add('Direccion')
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
  ClienteRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ClienteRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'apellido':
          result.apellido = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'telefono_contacto':
          result.telefonoContacto = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'dni':
          result.dni = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'referencia':
          result.referencia = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Direccion':
          result.direccion = serializers.deserialize(value,
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

class _$ClienteRecord extends ClienteRecord {
  @override
  final String? nombre;
  @override
  final String? apellido;
  @override
  final int? telefonoContacto;
  @override
  final int? dni;
  @override
  final String? email;
  @override
  final String? referencia;
  @override
  final String? direccion;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ClienteRecord([void Function(ClienteRecordBuilder)? updates]) =>
      (new ClienteRecordBuilder()..update(updates))._build();

  _$ClienteRecord._(
      {this.nombre,
      this.apellido,
      this.telefonoContacto,
      this.dni,
      this.email,
      this.referencia,
      this.direccion,
      this.ffRef})
      : super._();

  @override
  ClienteRecord rebuild(void Function(ClienteRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClienteRecordBuilder toBuilder() => new ClienteRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ClienteRecord &&
        nombre == other.nombre &&
        apellido == other.apellido &&
        telefonoContacto == other.telefonoContacto &&
        dni == other.dni &&
        email == other.email &&
        referencia == other.referencia &&
        direccion == other.direccion &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, nombre.hashCode), apellido.hashCode),
                            telefonoContacto.hashCode),
                        dni.hashCode),
                    email.hashCode),
                referencia.hashCode),
            direccion.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ClienteRecord')
          ..add('nombre', nombre)
          ..add('apellido', apellido)
          ..add('telefonoContacto', telefonoContacto)
          ..add('dni', dni)
          ..add('email', email)
          ..add('referencia', referencia)
          ..add('direccion', direccion)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ClienteRecordBuilder
    implements Builder<ClienteRecord, ClienteRecordBuilder> {
  _$ClienteRecord? _$v;

  String? _nombre;
  String? get nombre => _$this._nombre;
  set nombre(String? nombre) => _$this._nombre = nombre;

  String? _apellido;
  String? get apellido => _$this._apellido;
  set apellido(String? apellido) => _$this._apellido = apellido;

  int? _telefonoContacto;
  int? get telefonoContacto => _$this._telefonoContacto;
  set telefonoContacto(int? telefonoContacto) =>
      _$this._telefonoContacto = telefonoContacto;

  int? _dni;
  int? get dni => _$this._dni;
  set dni(int? dni) => _$this._dni = dni;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _referencia;
  String? get referencia => _$this._referencia;
  set referencia(String? referencia) => _$this._referencia = referencia;

  String? _direccion;
  String? get direccion => _$this._direccion;
  set direccion(String? direccion) => _$this._direccion = direccion;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ClienteRecordBuilder() {
    ClienteRecord._initializeBuilder(this);
  }

  ClienteRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _apellido = $v.apellido;
      _telefonoContacto = $v.telefonoContacto;
      _dni = $v.dni;
      _email = $v.email;
      _referencia = $v.referencia;
      _direccion = $v.direccion;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ClienteRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ClienteRecord;
  }

  @override
  void update(void Function(ClienteRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ClienteRecord build() => _build();

  _$ClienteRecord _build() {
    final _$result = _$v ??
        new _$ClienteRecord._(
            nombre: nombre,
            apellido: apellido,
            telefonoContacto: telefonoContacto,
            dni: dni,
            email: email,
            referencia: referencia,
            direccion: direccion,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

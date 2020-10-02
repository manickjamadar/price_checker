// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'customer_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
CustomerEntity _$CustomerEntityFromJson(Map<String, dynamic> json) {
  return _CustomerEntity.fromJson(json);
}

class _$CustomerEntityTearOff {
  const _$CustomerEntityTearOff();

// ignore: unused_element
  _CustomerEntity call(
      {@required
          String id,
      @required
          String name,
      @required
      @JsonKey(name: 'active_product_entities')
          List<ActiveProductEntity> activeProductEntities}) {
    return _CustomerEntity(
      id: id,
      name: name,
      activeProductEntities: activeProductEntities,
    );
  }
}

// ignore: unused_element
const $CustomerEntity = _$CustomerEntityTearOff();

mixin _$CustomerEntity {
  String get id;
  String get name;
  @JsonKey(name: 'active_product_entities')
  List<ActiveProductEntity> get activeProductEntities;

  Map<String, dynamic> toJson();
  $CustomerEntityCopyWith<CustomerEntity> get copyWith;
}

abstract class $CustomerEntityCopyWith<$Res> {
  factory $CustomerEntityCopyWith(
          CustomerEntity value, $Res Function(CustomerEntity) then) =
      _$CustomerEntityCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'active_product_entities')
          List<ActiveProductEntity> activeProductEntities});
}

class _$CustomerEntityCopyWithImpl<$Res>
    implements $CustomerEntityCopyWith<$Res> {
  _$CustomerEntityCopyWithImpl(this._value, this._then);

  final CustomerEntity _value;
  // ignore: unused_field
  final $Res Function(CustomerEntity) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object activeProductEntities = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      activeProductEntities: activeProductEntities == freezed
          ? _value.activeProductEntities
          : activeProductEntities as List<ActiveProductEntity>,
    ));
  }
}

abstract class _$CustomerEntityCopyWith<$Res>
    implements $CustomerEntityCopyWith<$Res> {
  factory _$CustomerEntityCopyWith(
          _CustomerEntity value, $Res Function(_CustomerEntity) then) =
      __$CustomerEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      @JsonKey(name: 'active_product_entities')
          List<ActiveProductEntity> activeProductEntities});
}

class __$CustomerEntityCopyWithImpl<$Res>
    extends _$CustomerEntityCopyWithImpl<$Res>
    implements _$CustomerEntityCopyWith<$Res> {
  __$CustomerEntityCopyWithImpl(
      _CustomerEntity _value, $Res Function(_CustomerEntity) _then)
      : super(_value, (v) => _then(v as _CustomerEntity));

  @override
  _CustomerEntity get _value => super._value as _CustomerEntity;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object activeProductEntities = freezed,
  }) {
    return _then(_CustomerEntity(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      activeProductEntities: activeProductEntities == freezed
          ? _value.activeProductEntities
          : activeProductEntities as List<ActiveProductEntity>,
    ));
  }
}

@JsonSerializable(explicitToJson: true)
class _$_CustomerEntity extends _CustomerEntity {
  const _$_CustomerEntity(
      {@required
          this.id,
      @required
          this.name,
      @required
      @JsonKey(name: 'active_product_entities')
          this.activeProductEntities})
      : assert(id != null),
        assert(name != null),
        assert(activeProductEntities != null),
        super._();

  factory _$_CustomerEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_CustomerEntityFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'active_product_entities')
  final List<ActiveProductEntity> activeProductEntities;

  @override
  String toString() {
    return 'CustomerEntity(id: $id, name: $name, activeProductEntities: $activeProductEntities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CustomerEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.activeProductEntities, activeProductEntities) ||
                const DeepCollectionEquality().equals(
                    other.activeProductEntities, activeProductEntities)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(activeProductEntities);

  @override
  _$CustomerEntityCopyWith<_CustomerEntity> get copyWith =>
      __$CustomerEntityCopyWithImpl<_CustomerEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CustomerEntityToJson(this);
  }
}

abstract class _CustomerEntity extends CustomerEntity {
  const _CustomerEntity._() : super._();
  const factory _CustomerEntity(
      {@required
          String id,
      @required
          String name,
      @required
      @JsonKey(name: 'active_product_entities')
          List<ActiveProductEntity> activeProductEntities}) = _$_CustomerEntity;

  factory _CustomerEntity.fromJson(Map<String, dynamic> json) =
      _$_CustomerEntity.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'active_product_entities')
  List<ActiveProductEntity> get activeProductEntities;
  @override
  _$CustomerEntityCopyWith<_CustomerEntity> get copyWith;
}

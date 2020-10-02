// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'product_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ProductEntity _$ProductEntityFromJson(Map<String, dynamic> json) {
  return _ProductEntity.fromJson(json);
}

class _$ProductEntityTearOff {
  const _$ProductEntityTearOff();

// ignore: unused_element
  _ProductEntity call({@required String id, @required String name}) {
    return _ProductEntity(
      id: id,
      name: name,
    );
  }
}

// ignore: unused_element
const $ProductEntity = _$ProductEntityTearOff();

mixin _$ProductEntity {
  String get id;
  String get name;

  Map<String, dynamic> toJson();
  $ProductEntityCopyWith<ProductEntity> get copyWith;
}

abstract class $ProductEntityCopyWith<$Res> {
  factory $ProductEntityCopyWith(
          ProductEntity value, $Res Function(ProductEntity) then) =
      _$ProductEntityCopyWithImpl<$Res>;
  $Res call({String id, String name});
}

class _$ProductEntityCopyWithImpl<$Res>
    implements $ProductEntityCopyWith<$Res> {
  _$ProductEntityCopyWithImpl(this._value, this._then);

  final ProductEntity _value;
  // ignore: unused_field
  final $Res Function(ProductEntity) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

abstract class _$ProductEntityCopyWith<$Res>
    implements $ProductEntityCopyWith<$Res> {
  factory _$ProductEntityCopyWith(
          _ProductEntity value, $Res Function(_ProductEntity) then) =
      __$ProductEntityCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name});
}

class __$ProductEntityCopyWithImpl<$Res>
    extends _$ProductEntityCopyWithImpl<$Res>
    implements _$ProductEntityCopyWith<$Res> {
  __$ProductEntityCopyWithImpl(
      _ProductEntity _value, $Res Function(_ProductEntity) _then)
      : super(_value, (v) => _then(v as _ProductEntity));

  @override
  _ProductEntity get _value => super._value as _ProductEntity;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
  }) {
    return _then(_ProductEntity(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
    ));
  }
}

@JsonSerializable()
class _$_ProductEntity extends _ProductEntity {
  const _$_ProductEntity({@required this.id, @required this.name})
      : assert(id != null),
        assert(name != null),
        super._();

  factory _$_ProductEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductEntityFromJson(json);

  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'ProductEntity(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @override
  _$ProductEntityCopyWith<_ProductEntity> get copyWith =>
      __$ProductEntityCopyWithImpl<_ProductEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductEntityToJson(this);
  }
}

abstract class _ProductEntity extends ProductEntity {
  const _ProductEntity._() : super._();
  const factory _ProductEntity({@required String id, @required String name}) =
      _$_ProductEntity;

  factory _ProductEntity.fromJson(Map<String, dynamic> json) =
      _$_ProductEntity.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  _$ProductEntityCopyWith<_ProductEntity> get copyWith;
}

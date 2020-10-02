// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'active_product_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ActiveProductEntity _$ActiveProductEntityFromJson(Map<String, dynamic> json) {
  return _ActiveProductEntity.fromJson(json);
}

class _$ActiveProductEntityTearOff {
  const _$ActiveProductEntityTearOff();

// ignore: unused_element
  _ActiveProductEntity call(
      {@required String id,
      @required int price,
      @required @JsonKey(name: 'product_entity') ProductEntity productEntity}) {
    return _ActiveProductEntity(
      id: id,
      price: price,
      productEntity: productEntity,
    );
  }
}

// ignore: unused_element
const $ActiveProductEntity = _$ActiveProductEntityTearOff();

mixin _$ActiveProductEntity {
  String get id;
  int get price;
  @JsonKey(name: 'product_entity')
  ProductEntity get productEntity;

  Map<String, dynamic> toJson();
  $ActiveProductEntityCopyWith<ActiveProductEntity> get copyWith;
}

abstract class $ActiveProductEntityCopyWith<$Res> {
  factory $ActiveProductEntityCopyWith(
          ActiveProductEntity value, $Res Function(ActiveProductEntity) then) =
      _$ActiveProductEntityCopyWithImpl<$Res>;
  $Res call(
      {String id,
      int price,
      @JsonKey(name: 'product_entity') ProductEntity productEntity});

  $ProductEntityCopyWith<$Res> get productEntity;
}

class _$ActiveProductEntityCopyWithImpl<$Res>
    implements $ActiveProductEntityCopyWith<$Res> {
  _$ActiveProductEntityCopyWithImpl(this._value, this._then);

  final ActiveProductEntity _value;
  // ignore: unused_field
  final $Res Function(ActiveProductEntity) _then;

  @override
  $Res call({
    Object id = freezed,
    Object price = freezed,
    Object productEntity = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      price: price == freezed ? _value.price : price as int,
      productEntity: productEntity == freezed
          ? _value.productEntity
          : productEntity as ProductEntity,
    ));
  }

  @override
  $ProductEntityCopyWith<$Res> get productEntity {
    if (_value.productEntity == null) {
      return null;
    }
    return $ProductEntityCopyWith<$Res>(_value.productEntity, (value) {
      return _then(_value.copyWith(productEntity: value));
    });
  }
}

abstract class _$ActiveProductEntityCopyWith<$Res>
    implements $ActiveProductEntityCopyWith<$Res> {
  factory _$ActiveProductEntityCopyWith(_ActiveProductEntity value,
          $Res Function(_ActiveProductEntity) then) =
      __$ActiveProductEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      int price,
      @JsonKey(name: 'product_entity') ProductEntity productEntity});

  @override
  $ProductEntityCopyWith<$Res> get productEntity;
}

class __$ActiveProductEntityCopyWithImpl<$Res>
    extends _$ActiveProductEntityCopyWithImpl<$Res>
    implements _$ActiveProductEntityCopyWith<$Res> {
  __$ActiveProductEntityCopyWithImpl(
      _ActiveProductEntity _value, $Res Function(_ActiveProductEntity) _then)
      : super(_value, (v) => _then(v as _ActiveProductEntity));

  @override
  _ActiveProductEntity get _value => super._value as _ActiveProductEntity;

  @override
  $Res call({
    Object id = freezed,
    Object price = freezed,
    Object productEntity = freezed,
  }) {
    return _then(_ActiveProductEntity(
      id: id == freezed ? _value.id : id as String,
      price: price == freezed ? _value.price : price as int,
      productEntity: productEntity == freezed
          ? _value.productEntity
          : productEntity as ProductEntity,
    ));
  }
}

@JsonSerializable(explicitToJson: true)
class _$_ActiveProductEntity extends _ActiveProductEntity {
  const _$_ActiveProductEntity(
      {@required this.id,
      @required this.price,
      @required @JsonKey(name: 'product_entity') this.productEntity})
      : assert(id != null),
        assert(price != null),
        assert(productEntity != null),
        super._();

  factory _$_ActiveProductEntity.fromJson(Map<String, dynamic> json) =>
      _$_$_ActiveProductEntityFromJson(json);

  @override
  final String id;
  @override
  final int price;
  @override
  @JsonKey(name: 'product_entity')
  final ProductEntity productEntity;

  @override
  String toString() {
    return 'ActiveProductEntity(id: $id, price: $price, productEntity: $productEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActiveProductEntity &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.productEntity, productEntity) ||
                const DeepCollectionEquality()
                    .equals(other.productEntity, productEntity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(productEntity);

  @override
  _$ActiveProductEntityCopyWith<_ActiveProductEntity> get copyWith =>
      __$ActiveProductEntityCopyWithImpl<_ActiveProductEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ActiveProductEntityToJson(this);
  }
}

abstract class _ActiveProductEntity extends ActiveProductEntity {
  const _ActiveProductEntity._() : super._();
  const factory _ActiveProductEntity(
      {@required
          String id,
      @required
          int price,
      @required
      @JsonKey(name: 'product_entity')
          ProductEntity productEntity}) = _$_ActiveProductEntity;

  factory _ActiveProductEntity.fromJson(Map<String, dynamic> json) =
      _$_ActiveProductEntity.fromJson;

  @override
  String get id;
  @override
  int get price;
  @override
  @JsonKey(name: 'product_entity')
  ProductEntity get productEntity;
  @override
  _$ActiveProductEntityCopyWith<_ActiveProductEntity> get copyWith;
}

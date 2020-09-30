// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'active_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ActiveProductTearOff {
  const _$ActiveProductTearOff();

// ignore: unused_element
  _ActiveProduct call(
      {@required UniqueId id,
      @required Product product,
      @required ProductPrice price}) {
    return _ActiveProduct(
      id: id,
      product: product,
      price: price,
    );
  }
}

// ignore: unused_element
const $ActiveProduct = _$ActiveProductTearOff();

mixin _$ActiveProduct {
  UniqueId get id;
  Product get product;
  ProductPrice get price;

  $ActiveProductCopyWith<ActiveProduct> get copyWith;
}

abstract class $ActiveProductCopyWith<$Res> {
  factory $ActiveProductCopyWith(
          ActiveProduct value, $Res Function(ActiveProduct) then) =
      _$ActiveProductCopyWithImpl<$Res>;
  $Res call({UniqueId id, Product product, ProductPrice price});

  $ProductCopyWith<$Res> get product;
}

class _$ActiveProductCopyWithImpl<$Res>
    implements $ActiveProductCopyWith<$Res> {
  _$ActiveProductCopyWithImpl(this._value, this._then);

  final ActiveProduct _value;
  // ignore: unused_field
  final $Res Function(ActiveProduct) _then;

  @override
  $Res call({
    Object id = freezed,
    Object product = freezed,
    Object price = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      product: product == freezed ? _value.product : product as Product,
      price: price == freezed ? _value.price : price as ProductPrice,
    ));
  }

  @override
  $ProductCopyWith<$Res> get product {
    if (_value.product == null) {
      return null;
    }
    return $ProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

abstract class _$ActiveProductCopyWith<$Res>
    implements $ActiveProductCopyWith<$Res> {
  factory _$ActiveProductCopyWith(
          _ActiveProduct value, $Res Function(_ActiveProduct) then) =
      __$ActiveProductCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, Product product, ProductPrice price});

  @override
  $ProductCopyWith<$Res> get product;
}

class __$ActiveProductCopyWithImpl<$Res>
    extends _$ActiveProductCopyWithImpl<$Res>
    implements _$ActiveProductCopyWith<$Res> {
  __$ActiveProductCopyWithImpl(
      _ActiveProduct _value, $Res Function(_ActiveProduct) _then)
      : super(_value, (v) => _then(v as _ActiveProduct));

  @override
  _ActiveProduct get _value => super._value as _ActiveProduct;

  @override
  $Res call({
    Object id = freezed,
    Object product = freezed,
    Object price = freezed,
  }) {
    return _then(_ActiveProduct(
      id: id == freezed ? _value.id : id as UniqueId,
      product: product == freezed ? _value.product : product as Product,
      price: price == freezed ? _value.price : price as ProductPrice,
    ));
  }
}

class _$_ActiveProduct implements _ActiveProduct {
  const _$_ActiveProduct(
      {@required this.id, @required this.product, @required this.price})
      : assert(id != null),
        assert(product != null),
        assert(price != null);

  @override
  final UniqueId id;
  @override
  final Product product;
  @override
  final ProductPrice price;

  @override
  String toString() {
    return 'ActiveProduct(id: $id, product: $product, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActiveProduct &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.product, product) ||
                const DeepCollectionEquality()
                    .equals(other.product, product)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(product) ^
      const DeepCollectionEquality().hash(price);

  @override
  _$ActiveProductCopyWith<_ActiveProduct> get copyWith =>
      __$ActiveProductCopyWithImpl<_ActiveProduct>(this, _$identity);
}

abstract class _ActiveProduct implements ActiveProduct {
  const factory _ActiveProduct(
      {@required UniqueId id,
      @required Product product,
      @required ProductPrice price}) = _$_ActiveProduct;

  @override
  UniqueId get id;
  @override
  Product get product;
  @override
  ProductPrice get price;
  @override
  _$ActiveProductCopyWith<_ActiveProduct> get copyWith;
}

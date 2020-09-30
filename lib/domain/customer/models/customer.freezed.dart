// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'customer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CustomerTearOff {
  const _$CustomerTearOff();

// ignore: unused_element
  _Customer call(
      {@required CustomerName name,
      @required Product product,
      @required ProductPrice price}) {
    return _Customer(
      name: name,
      product: product,
      price: price,
    );
  }
}

// ignore: unused_element
const $Customer = _$CustomerTearOff();

mixin _$Customer {
  CustomerName get name;
  Product get product;
  ProductPrice get price;

  $CustomerCopyWith<Customer> get copyWith;
}

abstract class $CustomerCopyWith<$Res> {
  factory $CustomerCopyWith(Customer value, $Res Function(Customer) then) =
      _$CustomerCopyWithImpl<$Res>;
  $Res call({CustomerName name, Product product, ProductPrice price});

  $ProductCopyWith<$Res> get product;
}

class _$CustomerCopyWithImpl<$Res> implements $CustomerCopyWith<$Res> {
  _$CustomerCopyWithImpl(this._value, this._then);

  final Customer _value;
  // ignore: unused_field
  final $Res Function(Customer) _then;

  @override
  $Res call({
    Object name = freezed,
    Object product = freezed,
    Object price = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as CustomerName,
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

abstract class _$CustomerCopyWith<$Res> implements $CustomerCopyWith<$Res> {
  factory _$CustomerCopyWith(_Customer value, $Res Function(_Customer) then) =
      __$CustomerCopyWithImpl<$Res>;
  @override
  $Res call({CustomerName name, Product product, ProductPrice price});

  @override
  $ProductCopyWith<$Res> get product;
}

class __$CustomerCopyWithImpl<$Res> extends _$CustomerCopyWithImpl<$Res>
    implements _$CustomerCopyWith<$Res> {
  __$CustomerCopyWithImpl(_Customer _value, $Res Function(_Customer) _then)
      : super(_value, (v) => _then(v as _Customer));

  @override
  _Customer get _value => super._value as _Customer;

  @override
  $Res call({
    Object name = freezed,
    Object product = freezed,
    Object price = freezed,
  }) {
    return _then(_Customer(
      name: name == freezed ? _value.name : name as CustomerName,
      product: product == freezed ? _value.product : product as Product,
      price: price == freezed ? _value.price : price as ProductPrice,
    ));
  }
}

class _$_Customer implements _Customer {
  const _$_Customer(
      {@required this.name, @required this.product, @required this.price})
      : assert(name != null),
        assert(product != null),
        assert(price != null);

  @override
  final CustomerName name;
  @override
  final Product product;
  @override
  final ProductPrice price;

  @override
  String toString() {
    return 'Customer(name: $name, product: $product, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Customer &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.product, product) ||
                const DeepCollectionEquality()
                    .equals(other.product, product)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(product) ^
      const DeepCollectionEquality().hash(price);

  @override
  _$CustomerCopyWith<_Customer> get copyWith =>
      __$CustomerCopyWithImpl<_Customer>(this, _$identity);
}

abstract class _Customer implements Customer {
  const factory _Customer(
      {@required CustomerName name,
      @required Product product,
      @required ProductPrice price}) = _$_Customer;

  @override
  CustomerName get name;
  @override
  Product get product;
  @override
  ProductPrice get price;
  @override
  _$CustomerCopyWith<_Customer> get copyWith;
}

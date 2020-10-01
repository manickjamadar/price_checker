// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'customer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CustomerStateTearOff {
  const _$CustomerStateTearOff();

// ignore: unused_element
  _Initial inital() {
    return const _Initial();
  }

// ignore: unused_element
  _Loaded loaded({@required List<Customer> customers}) {
    return _Loaded(
      customers: customers,
    );
  }

// ignore: unused_element
  _Error error() {
    return const _Error();
  }
}

// ignore: unused_element
const $CustomerState = _$CustomerStateTearOff();

mixin _$CustomerState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result loaded(List<Customer> customers),
    @required Result error(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result loaded(List<Customer> customers),
    Result error(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(_Initial value),
    @required Result loaded(_Loaded value),
    @required Result error(_Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result loaded(_Loaded value),
    Result error(_Error value),
    @required Result orElse(),
  });
}

abstract class $CustomerStateCopyWith<$Res> {
  factory $CustomerStateCopyWith(
          CustomerState value, $Res Function(CustomerState) then) =
      _$CustomerStateCopyWithImpl<$Res>;
}

class _$CustomerStateCopyWithImpl<$Res>
    implements $CustomerStateCopyWith<$Res> {
  _$CustomerStateCopyWithImpl(this._value, this._then);

  final CustomerState _value;
  // ignore: unused_field
  final $Res Function(CustomerState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$CustomerStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CustomerState.inital()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result loaded(List<Customer> customers),
    @required Result error(),
  }) {
    assert(inital != null);
    assert(loaded != null);
    assert(error != null);
    return inital();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result loaded(List<Customer> customers),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inital != null) {
      return inital();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(_Initial value),
    @required Result loaded(_Loaded value),
    @required Result error(_Error value),
  }) {
    assert(inital != null);
    assert(loaded != null);
    assert(error != null);
    return inital(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result loaded(_Loaded value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inital != null) {
      return inital(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CustomerState {
  const factory _Initial() = _$_Initial;
}

abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<Customer> customers});
}

class __$LoadedCopyWithImpl<$Res> extends _$CustomerStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object customers = freezed,
  }) {
    return _then(_Loaded(
      customers:
          customers == freezed ? _value.customers : customers as List<Customer>,
    ));
  }
}

class _$_Loaded implements _Loaded {
  const _$_Loaded({@required this.customers}) : assert(customers != null);

  @override
  final List<Customer> customers;

  @override
  String toString() {
    return 'CustomerState.loaded(customers: $customers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.customers, customers) ||
                const DeepCollectionEquality()
                    .equals(other.customers, customers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(customers);

  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result loaded(List<Customer> customers),
    @required Result error(),
  }) {
    assert(inital != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(customers);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result loaded(List<Customer> customers),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(customers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(_Initial value),
    @required Result loaded(_Loaded value),
    @required Result error(_Error value),
  }) {
    assert(inital != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result loaded(_Loaded value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements CustomerState {
  const factory _Loaded({@required List<Customer> customers}) = _$_Loaded;

  List<Customer> get customers;
  _$LoadedCopyWith<_Loaded> get copyWith;
}

abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
}

class __$ErrorCopyWithImpl<$Res> extends _$CustomerStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;
}

class _$_Error implements _Error {
  const _$_Error();

  @override
  String toString() {
    return 'CustomerState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Error);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inital(),
    @required Result loaded(List<Customer> customers),
    @required Result error(),
  }) {
    assert(inital != null);
    assert(loaded != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inital(),
    Result loaded(List<Customer> customers),
    Result error(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inital(_Initial value),
    @required Result loaded(_Loaded value),
    @required Result error(_Error value),
  }) {
    assert(inital != null);
    assert(loaded != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inital(_Initial value),
    Result loaded(_Loaded value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements CustomerState {
  const factory _Error() = _$_Error;
}

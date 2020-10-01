// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'customer_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CustomerFormStateTearOff {
  const _$CustomerFormStateTearOff();

// ignore: unused_element
  _CustomerFormState call(
      {@required bool isEditing,
      @required bool isSaving,
      @required Customer customer,
      @required Option<Either<Error, Unit>> saveStatus,
      @required bool showError}) {
    return _CustomerFormState(
      isEditing: isEditing,
      isSaving: isSaving,
      customer: customer,
      saveStatus: saveStatus,
      showError: showError,
    );
  }
}

// ignore: unused_element
const $CustomerFormState = _$CustomerFormStateTearOff();

mixin _$CustomerFormState {
  bool get isEditing;
  bool get isSaving;
  Customer get customer;
  Option<Either<Error, Unit>> get saveStatus;
  bool get showError;

  $CustomerFormStateCopyWith<CustomerFormState> get copyWith;
}

abstract class $CustomerFormStateCopyWith<$Res> {
  factory $CustomerFormStateCopyWith(
          CustomerFormState value, $Res Function(CustomerFormState) then) =
      _$CustomerFormStateCopyWithImpl<$Res>;
  $Res call(
      {bool isEditing,
      bool isSaving,
      Customer customer,
      Option<Either<Error, Unit>> saveStatus,
      bool showError});

  $CustomerCopyWith<$Res> get customer;
}

class _$CustomerFormStateCopyWithImpl<$Res>
    implements $CustomerFormStateCopyWith<$Res> {
  _$CustomerFormStateCopyWithImpl(this._value, this._then);

  final CustomerFormState _value;
  // ignore: unused_field
  final $Res Function(CustomerFormState) _then;

  @override
  $Res call({
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object customer = freezed,
    Object saveStatus = freezed,
    Object showError = freezed,
  }) {
    return _then(_value.copyWith(
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      customer: customer == freezed ? _value.customer : customer as Customer,
      saveStatus: saveStatus == freezed
          ? _value.saveStatus
          : saveStatus as Option<Either<Error, Unit>>,
      showError: showError == freezed ? _value.showError : showError as bool,
    ));
  }

  @override
  $CustomerCopyWith<$Res> get customer {
    if (_value.customer == null) {
      return null;
    }
    return $CustomerCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value));
    });
  }
}

abstract class _$CustomerFormStateCopyWith<$Res>
    implements $CustomerFormStateCopyWith<$Res> {
  factory _$CustomerFormStateCopyWith(
          _CustomerFormState value, $Res Function(_CustomerFormState) then) =
      __$CustomerFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isEditing,
      bool isSaving,
      Customer customer,
      Option<Either<Error, Unit>> saveStatus,
      bool showError});

  @override
  $CustomerCopyWith<$Res> get customer;
}

class __$CustomerFormStateCopyWithImpl<$Res>
    extends _$CustomerFormStateCopyWithImpl<$Res>
    implements _$CustomerFormStateCopyWith<$Res> {
  __$CustomerFormStateCopyWithImpl(
      _CustomerFormState _value, $Res Function(_CustomerFormState) _then)
      : super(_value, (v) => _then(v as _CustomerFormState));

  @override
  _CustomerFormState get _value => super._value as _CustomerFormState;

  @override
  $Res call({
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object customer = freezed,
    Object saveStatus = freezed,
    Object showError = freezed,
  }) {
    return _then(_CustomerFormState(
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      customer: customer == freezed ? _value.customer : customer as Customer,
      saveStatus: saveStatus == freezed
          ? _value.saveStatus
          : saveStatus as Option<Either<Error, Unit>>,
      showError: showError == freezed ? _value.showError : showError as bool,
    ));
  }
}

class _$_CustomerFormState implements _CustomerFormState {
  const _$_CustomerFormState(
      {@required this.isEditing,
      @required this.isSaving,
      @required this.customer,
      @required this.saveStatus,
      @required this.showError})
      : assert(isEditing != null),
        assert(isSaving != null),
        assert(customer != null),
        assert(saveStatus != null),
        assert(showError != null);

  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Customer customer;
  @override
  final Option<Either<Error, Unit>> saveStatus;
  @override
  final bool showError;

  @override
  String toString() {
    return 'CustomerFormState(isEditing: $isEditing, isSaving: $isSaving, customer: $customer, saveStatus: $saveStatus, showError: $showError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CustomerFormState &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.customer, customer) ||
                const DeepCollectionEquality()
                    .equals(other.customer, customer)) &&
            (identical(other.saveStatus, saveStatus) ||
                const DeepCollectionEquality()
                    .equals(other.saveStatus, saveStatus)) &&
            (identical(other.showError, showError) ||
                const DeepCollectionEquality()
                    .equals(other.showError, showError)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(customer) ^
      const DeepCollectionEquality().hash(saveStatus) ^
      const DeepCollectionEquality().hash(showError);

  @override
  _$CustomerFormStateCopyWith<_CustomerFormState> get copyWith =>
      __$CustomerFormStateCopyWithImpl<_CustomerFormState>(this, _$identity);
}

abstract class _CustomerFormState implements CustomerFormState {
  const factory _CustomerFormState(
      {@required bool isEditing,
      @required bool isSaving,
      @required Customer customer,
      @required Option<Either<Error, Unit>> saveStatus,
      @required bool showError}) = _$_CustomerFormState;

  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Customer get customer;
  @override
  Option<Either<Error, Unit>> get saveStatus;
  @override
  bool get showError;
  @override
  _$CustomerFormStateCopyWith<_CustomerFormState> get copyWith;
}

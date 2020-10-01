part of 'customer_cubit.dart';

@freezed
abstract class CustomerState with _$CustomerState {
  const factory CustomerState.inital() = _Initial;
  const factory CustomerState.loaded({@required List<Customer> customers}) =
      _Loaded;
  const factory CustomerState.error() = _Error;
}

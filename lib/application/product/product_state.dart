part of 'product_cubit.dart';

@freezed
abstract class ProductState with _$ProductState {
  const factory ProductState.inital() = _Initial;
  const factory ProductState.loaded({@required List<Product> products}) =
      _Loaded;
  const factory ProductState.error() = _Error;
}

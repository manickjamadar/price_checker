import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:price_checker/domain/core/unique_id.dart';
import 'package:price_checker/domain/product/models/product.dart';
import 'package:price_checker/domain/product/value_objects/product_name.dart';

part 'product_state.dart';
part 'product_cubit.freezed.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductState.inital());

  //events
  void init() {
    emit(ProductState.loaded(products: []));
  }

  void save(String name) {
    final product = Product(id: UniqueId(), name: ProductName(name));
    if (!product.isValid) {
      return;
    }
    state.maybeWhen(
        orElse: () {},
        loaded: (products) {
          final newList = [...products, product];
          emit(ProductState.loaded(products: newList));
        });
  }
}

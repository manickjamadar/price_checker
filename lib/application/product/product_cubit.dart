import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:price_checker/domain/core/unique_id.dart';
import 'package:price_checker/domain/product/models/product.dart';
import 'package:price_checker/domain/product/value_objects/product_name.dart';
import 'package:price_checker/presentation/core/helpers/deletor.dart';

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

  void delete(Deletor deletor) {
    state.maybeWhen(
        orElse: () {},
        loaded: (products) {
          final newList =
              products.where((product) => product.id != deletor.id).toList();
          emit(ProductState.loaded(products: newList));
          deletor.shouldDelete.then((value) {
            if (value) {
              //delete permanantly
              print("delete parmanantly");
            } else {
              emit(ProductState.loaded(products: products));
            }
          });
        });
  }
}

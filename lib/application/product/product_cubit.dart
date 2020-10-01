import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:price_checker/domain/core/unique_id.dart';
import 'package:price_checker/domain/product/facade/product_facade.dart';
import 'package:price_checker/domain/product/models/product.dart';
import 'package:price_checker/domain/product/value_objects/product_name.dart';
import 'package:price_checker/presentation/core/helpers/deletor.dart';

part 'product_state.dart';
part 'product_cubit.freezed.dart';

class ProductCubit extends Cubit<ProductState> {
  final IProductFacade productFacade;
  ProductCubit({@required this.productFacade}) : super(ProductState.inital());

  //events
  void init() async {
    final productsOption = await productFacade.findAll();
    productsOption.fold((_) {
      emit(ProductState.loaded(products: []));
    }, (products) {
      emit(ProductState.loaded(products: products));
    });
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
          //TODO: save product permanantly
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
              //TODO: delete permanantly
            } else {
              emit(ProductState.loaded(products: products));
            }
          });
        });
  }

  void update(UniqueId id, String name) {
    state.maybeWhen(
        orElse: () {},
        loaded: (products) {
          final newList = products.map((product) {
            if (product.id == id) {
              final newProduct = product.copyWith(name: ProductName(name));
              if (newProduct.isValid) {
                //Todo: update product permanantly
                return newProduct;
              }
            }
            return product;
          }).toList();

          emit(ProductState.loaded(products: newList));
        });
  }
}

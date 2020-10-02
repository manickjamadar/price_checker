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

  void save(String name) async {
    final product = Product(id: UniqueId(), name: ProductName(name));
    if (!product.isValid) {
      return;
    }
    await state.maybeWhen(
        orElse: () {},
        loaded: (products) async {
          final newList = [...products, product];
          emit(ProductState.loaded(products: newList));
          await productFacade.create(product);
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
              productFacade.delete(deletor.id);
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
                productFacade.update(newProduct);
                return newProduct;
              }
            }
            return product;
          }).toList();

          emit(ProductState.loaded(products: newList));
        });
  }
}

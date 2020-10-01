import 'package:price_checker/domain/core/unique_id.dart';
import 'package:dartz/dartz.dart';
import 'package:price_checker/domain/product/facade/product_facade.dart';
import 'package:price_checker/domain/product/models/product.dart';
import 'package:price_checker/domain/product/value_objects/product_name.dart';

class ProductFacade extends IProductFacade {
  @override
  Future<Either<Error, Unit>> create(Product product) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<Either<Error, Product>> delete(UniqueId id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<Either<Error, List<Product>>> findAll() async {
    // TODO: implement findAll
    final products = [
      Product(id: UniqueId(), name: ProductName("Potato")),
      Product(id: UniqueId(), name: ProductName("Tomato")),
      Product(id: UniqueId(), name: ProductName("Rice")),
      Product(id: UniqueId(), name: ProductName("Fish")),
      Product(id: UniqueId(), name: ProductName("Meat")),
    ];
    return Right(products);
  }

  @override
  Future<Either<Error, Unit>> update(Product product) {
    // TODO: implement update
    throw UnimplementedError();
  }
}

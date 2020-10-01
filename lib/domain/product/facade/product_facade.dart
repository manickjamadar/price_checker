import 'package:dartz/dartz.dart';
import 'package:price_checker/domain/core/unique_id.dart';
import 'package:price_checker/domain/product/models/product.dart';

abstract class IProductFacade {
  Future<Either<Error, Unit>> create(Product product);
  Future<Either<Error, List<Product>>> findAll();
  Future<Either<Error, Unit>> update(Product product);
  Future<Either<Error, Product>> delete(UniqueId id);
}

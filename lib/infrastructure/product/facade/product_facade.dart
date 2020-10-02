import 'package:flutter/foundation.dart';
import 'package:price_checker/domain/core/unique_id.dart';
import 'package:dartz/dartz.dart';
import 'package:price_checker/domain/product/facade/product_facade.dart';
import 'package:price_checker/domain/product/models/product.dart';
import 'package:price_checker/infrastructure/product/data_source/i_product_data_source.dart';
import 'package:price_checker/infrastructure/product/entity/product_entity.dart';

class ProductFacade extends IProductFacade {
  final IProductDataSource dataSource;

  ProductFacade({@required this.dataSource});
  @override
  Future<Either<Error, Unit>> create(Product product) async {
    try {
      await dataSource.create(ProductEntity.fromModel(product));
      return Right(unit);
    } catch (_) {
      return Left(Error());
    }
  }

  @override
  Future<Either<Error, Product>> delete(UniqueId id) async {
    try {
      final entity = await dataSource.delete(id.value);
      return Right(entity?.toModel());
    } catch (_) {
      return Left(Error());
    }
  }

  @override
  Future<Either<Error, List<Product>>> findAll() async {
    try {
      final entityList = await dataSource.findAll();
      final modelList = entityList.map((entity) => entity.toModel()).toList();
      return Right(modelList);
    } catch (_) {
      return Left(Error());
    }
  }

  @override
  Future<Either<Error, Unit>> update(Product product) async {
    try {
      await dataSource.update(ProductEntity.fromModel(product));
      return Right(unit);
    } catch (_) {
      return Left(Error());
    }
  }
}

import 'package:price_checker/infrastructure/product/entity/product_entity.dart';

abstract class IProductDataSource {
  Future<void> create(ProductEntity entity);
  Future<void> update(ProductEntity entity);
  Future<ProductEntity> delete(String id);
  Future<List<ProductEntity>> findAll();
}

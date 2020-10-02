import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:price_checker/domain/core/unique_id.dart';
import 'package:price_checker/domain/product/models/product.dart';
import 'package:price_checker/domain/product/value_objects/product_name.dart';

part 'product_entity.freezed.dart';
part 'product_entity.g.dart';

@freezed
abstract class ProductEntity implements _$ProductEntity {
  const ProductEntity._();
  const factory ProductEntity({@required String id, @required String name}) =
      _ProductEntity;

  factory ProductEntity.fromModel(Product product) {
    return ProductEntity(id: product.id.value, name: product.name.value);
  }
  Product toModel() {
    return Product(id: UniqueId.fromString(id), name: ProductName(name));
  }

  factory ProductEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductEntityFromJson(json);
}

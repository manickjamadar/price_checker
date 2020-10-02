import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:price_checker/domain/active_product/models/active_product.dart';
import 'package:price_checker/domain/active_product/value_objects/product_price.dart';
import 'package:price_checker/domain/core/unique_id.dart';
import 'package:price_checker/infrastructure/product/entity/product_entity.dart';

part 'active_product_entity.freezed.dart';
part 'active_product_entity.g.dart';

@freezed
abstract class ActiveProductEntity implements _$ActiveProductEntity {
  const ActiveProductEntity._();
  @JsonSerializable(explicitToJson: true)
  const factory ActiveProductEntity(
      {@required
          String id,
      @required
          int price,
      @JsonKey(name: "product_entity")
      @required
          ProductEntity productEntity}) = _ActiveProductEntity;

  factory ActiveProductEntity.fromModel(ActiveProduct activeProduct) {
    return ActiveProductEntity(
        id: activeProduct.id.value,
        price: activeProduct.price.value,
        productEntity: ProductEntity.fromModel(activeProduct.product));
  }
  ActiveProduct toModel() {
    return ActiveProduct(
        id: UniqueId.fromString(id),
        price: ProductPrice(price),
        product: productEntity.toModel());
  }

  factory ActiveProductEntity.fromJson(Map<String, dynamic> json) =>
      _$ActiveProductEntityFromJson(json);
}

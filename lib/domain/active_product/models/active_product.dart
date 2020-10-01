import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:price_checker/domain/active_product/value_objects/product_price.dart';
import 'package:price_checker/domain/core/unique_id.dart';
import 'package:price_checker/domain/product/models/product.dart';

part 'active_product.freezed.dart';

@freezed
abstract class ActiveProduct implements _$ActiveProduct {
  const ActiveProduct._();
  const factory ActiveProduct(
      {@required UniqueId id,
      @required Product product,
      @required ProductPrice price}) = _ActiveProduct;

  bool get isValid {
    return id.isValid && product.isValid && price.isValid;
  }
}

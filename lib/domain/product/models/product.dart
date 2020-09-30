import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:price_checker/domain/core/unique_id.dart';
import 'package:price_checker/domain/product/value_objects/product_name.dart';
part 'product.freezed.dart';

@freezed
abstract class Product implements _$Product {
  const Product._();
  const factory Product({@required UniqueId id, @required ProductName name}) =
      _Product;

  bool get isValid {
    return name.isValid;
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:price_checker/domain/product/value_objects/product_name.dart';
part 'product.freezed.dart';

@freezed
abstract class Product with _$Product {
  const factory Product({@required ProductName name}) = _Product;
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:price_checker/domain/customer/value_objects/customer_name.dart';
import 'package:price_checker/domain/product/models/product.dart';
import 'package:price_checker/domain/product/value_objects/product_price.dart';
part 'customer.freezed.dart';

@freezed
abstract class Customer with _$Customer {
  const factory Customer(
      {@required CustomerName name,
      @required Product product,
      @required ProductPrice price}) = _Customer;
}

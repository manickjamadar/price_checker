import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:price_checker/domain/active_product/models/active_product.dart';
import 'package:price_checker/domain/customer/value_objects/customer_name.dart';
part 'customer.freezed.dart';

@freezed
abstract class Customer with _$Customer {
  const factory Customer(
      {@required CustomerName name,
      @required List<ActiveProduct> activeProducts}) = _Customer;
}

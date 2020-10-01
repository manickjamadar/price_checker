import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:price_checker/domain/active_product/models/active_product.dart';
import 'package:price_checker/domain/core/unique_id.dart';
import 'package:price_checker/domain/customer/value_objects/customer_name.dart';
part 'customer.freezed.dart';

@freezed
abstract class Customer implements _$Customer {
  const Customer._();
  const factory Customer({
    @required UniqueId id,
    @required CustomerName name,
    @required List<ActiveProduct> activeProducts,
  }) = _Customer;
  factory Customer.empty() {
    return Customer(
      id: UniqueId(),
      name: CustomerName(""),
      activeProducts: [],
    );
  }

  bool get isValid {
    if (!name.isValid || !id.isValid) {
      return false;
    }
    if (activeProducts.isEmpty) {
      return true;
    }
    return activeProducts.every((ap) => ap.isValid);
  }
}

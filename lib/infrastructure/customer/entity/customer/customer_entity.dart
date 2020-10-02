import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:price_checker/domain/core/unique_id.dart';
import 'package:price_checker/domain/customer/models/customer.dart';
import 'package:price_checker/domain/customer/value_objects/customer_name.dart';
import 'package:price_checker/infrastructure/customer/entity/active_product/active_product_entity.dart';

part 'customer_entity.freezed.dart';
part 'customer_entity.g.dart';

@freezed
abstract class CustomerEntity implements _$CustomerEntity {
  const CustomerEntity._();
  @JsonSerializable(explicitToJson: true)
  const factory CustomerEntity(
      {@required
          String id,
      @required
          String name,
      @JsonKey(name: "active_product_entities")
      @required
          List<ActiveProductEntity> activeProductEntities}) = _CustomerEntity;
  factory CustomerEntity.fromJson(Map<String, dynamic> json) =>
      _$CustomerEntityFromJson(json);

  factory CustomerEntity.fromModel(Customer customer) {
    return CustomerEntity(
        id: customer.id.value,
        name: customer.name.value,
        activeProductEntities: customer.activeProducts
            .map((e) => ActiveProductEntity.fromModel(e))
            .toList());
  }
  Customer toModel() {
    return Customer(
        id: UniqueId.fromString(id),
        name: CustomerName(name),
        activeProducts: activeProductEntities.map((e) => e.toModel()).toList());
  }
}

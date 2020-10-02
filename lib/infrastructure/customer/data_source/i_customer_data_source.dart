import 'package:price_checker/infrastructure/customer/entity/customer/customer_entity.dart';

abstract class ICustomerDataSource {
  Future<void> create(CustomerEntity entity);
  Future<void> update(CustomerEntity entity);
  Future<void> delete(String id);
  Future<List<CustomerEntity>> findAll();
}

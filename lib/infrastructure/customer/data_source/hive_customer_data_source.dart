import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:price_checker/infrastructure/customer/data_source/i_customer_data_source.dart';
import 'package:price_checker/infrastructure/customer/entity/customer/customer_entity.dart';

class HiveCustomerDataSource extends ICustomerDataSource {
  final Box<String> box;
  HiveCustomerDataSource(this.box);
  @override
  Future<void> create(CustomerEntity entity) async {
    return update(entity);
  }

  @override
  Future<void> delete(String id) async {
    await box.delete(id);
  }

  @override
  Future<List<CustomerEntity>> findAll() async {
    final List<String> jsonStringList = box.values.toList();
    if (jsonStringList.isEmpty) {
      return [];
    }
    final jsonList = jsonStringList
        .map((string) => jsonDecode(string) as Map<String, dynamic>)
        .toList();
    final entityList =
        jsonList.map((json) => CustomerEntity.fromJson(json)).toList();
    return entityList;
  }

  @override
  Future<void> update(CustomerEntity entity) async {
    final String jsonString = jsonEncode(entity.toJson());
    await box.put(entity.id, jsonString);
  }
}

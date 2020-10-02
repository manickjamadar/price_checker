import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:price_checker/infrastructure/product/data_source/i_product_data_source.dart';
import 'package:price_checker/infrastructure/product/entity/product_entity.dart';

class HiveProductDataSource extends IProductDataSource {
  final Box<String> box;
  HiveProductDataSource(this.box);
  @override
  Future<void> create(ProductEntity entity) async {
    final json = entity.toJson();
    final jsonString = jsonEncode(json);
    box.put(entity.id, jsonString);
  }

  @override
  Future<ProductEntity> delete(String id) async {
    final jsonString = box.get(id);
    if (jsonString == null) {
      return null;
    }
    box.delete(id);
    final json = jsonDecode(jsonString) as Map<String, dynamic>;
    final entity = ProductEntity.fromJson(json);
    return entity;
  }

  @override
  Future<List<ProductEntity>> findAll() async {
    final jsonStringList = box.values.toList();
    if (jsonStringList.isEmpty) {
      return [];
    }

    final jsonList = jsonStringList
        .map((string) => jsonDecode(string) as Map<String, dynamic>)
        .toList();
    final entityList =
        jsonList.map((json) => ProductEntity.fromJson(json)).toList();
    return entityList;
  }

  @override
  Future<void> update(ProductEntity entity) async {
    return create(entity);
  }
}

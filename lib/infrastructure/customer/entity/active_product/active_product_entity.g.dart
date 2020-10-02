// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'active_product_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ActiveProductEntity _$_$_ActiveProductEntityFromJson(
    Map<String, dynamic> json) {
  return _$_ActiveProductEntity(
    id: json['id'] as String,
    price: json['price'] as int,
    productEntity: json['product_entity'] == null
        ? null
        : ProductEntity.fromJson(
            json['product_entity'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ActiveProductEntityToJson(
        _$_ActiveProductEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'product_entity': instance.productEntity?.toJson(),
    };

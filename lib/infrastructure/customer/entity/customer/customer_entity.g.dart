// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CustomerEntity _$_$_CustomerEntityFromJson(Map<String, dynamic> json) {
  return _$_CustomerEntity(
    id: json['id'] as String,
    name: json['name'] as String,
    activeProductEntities: (json['active_product_entities'] as List)
        ?.map((e) => e == null
            ? null
            : ActiveProductEntity.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_CustomerEntityToJson(_$_CustomerEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'active_product_entities':
          instance.activeProductEntities?.map((e) => e?.toJson())?.toList(),
    };

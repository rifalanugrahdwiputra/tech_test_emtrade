// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductRequestModel _$ProductRequestModelFromJson(Map<String, dynamic> json) =>
    ProductRequestModel(
      orderBy: json['orderBy'] as String?,
      sortBy: json['sortBy'] as String?,
      limit: (json['limit'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt(),
      category: json['category'] as String?,
    );

Map<String, dynamic> _$ProductRequestModelToJson(
        ProductRequestModel instance) =>
    <String, dynamic>{
      'orderBy': instance.orderBy,
      'sortBy': instance.sortBy,
      'limit': instance.limit,
      'page': instance.page,
      'category': instance.category,
    };

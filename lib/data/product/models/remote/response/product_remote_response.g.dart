// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_remote_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductRemoteResponse _$ProductRemoteResponseFromJson(
        Map<String, dynamic> json) =>
    ProductRemoteResponse(
      id: (json['id'] as num?)?.toInt(),
      nameProduct: json['nameProduct'] as String?,
      price: (json['price'] as num?)?.toInt(),
      discPrice: (json['discPrice'] as num?)?.toInt(),
      image: json['image'] as String?,
      category: json['category'] as String?,
      descProduct: json['descProduct'] as String?,
      colour: json['colour'] as String?,
      size: json['size'] as String?,
    );

Map<String, dynamic> _$ProductRemoteResponseToJson(
        ProductRemoteResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nameProduct': instance.nameProduct,
      'price': instance.price,
      'discPrice': instance.discPrice,
      'image': instance.image,
      'category': instance.category,
      'descProduct': instance.descProduct,
      'colour': instance.colour,
      'size': instance.size,
    };

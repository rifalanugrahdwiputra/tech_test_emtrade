// ignore_for_file: depend_on_referenced_packages

import 'package:template_mobile_apps/data/utils/models/remote/remote_response_mapper.dart';
import 'package:template_mobile_apps/domain/product/data/product_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_remote_response.g.dart';

@JsonSerializable()
class ProductRemoteResponse implements ResponseMapper<ProductData> {
  final int? id;
  final String? nameProduct;
  final int? price;
  final int? discPrice;
  final String? image;
  final String? category;
  final String? descProduct;
  final String? colour;
  final String? size;

  const ProductRemoteResponse({
    this.id,
    this.nameProduct,
    this.price,
    this.discPrice,
    this.image,
    this.category,
    this.descProduct,
    this.colour,
    this.size,
  });

  factory ProductRemoteResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductRemoteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductRemoteResponseToJson(this);

  @override
  String toString() => toJson().toString();

  @override
  ProductData toDomain() {
    return ProductData(
      id: id,
      nameProduct: nameProduct,
      price: price,
      discPrice: discPrice,
      image: image,
      category: category,
      descProduct: descProduct,
      colour: colour,
      size: size,
    );
  }
}

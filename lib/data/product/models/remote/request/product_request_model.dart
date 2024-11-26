// ignore_for_file: non_constant_identifier_kecamatanIds, depend_on_referenced_packages

import 'package:json_annotation/json_annotation.dart';

part 'product_request_model.g.dart';

@JsonSerializable()
class ProductRequestModel {
  final String? orderBy;
  final String? sortBy;
  final int? limit;
  final int? page;
  final String? category;

  ProductRequestModel({
    this.orderBy,
    this.sortBy,
    this.limit,
    this.page,
    this.category,
  });

  factory ProductRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ProductRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductRequestModelToJson(this);

  @override
  String toString() => toJson().toString();
}

// ignore_for_file: non_constant_identifier_kecamatanIds, depend_on_referenced_packages

import 'package:json_annotation/json_annotation.dart';

part 'article_content_request_model.g.dart';

@JsonSerializable()
class ArticleContentRequestModel {
  final int? page;
  final int? size;
  final String? sort;
  final String? query;

  ArticleContentRequestModel({
    this.page,
    this.size,
    this.sort,
    this.query,
  });

  factory ArticleContentRequestModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleContentRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleContentRequestModelToJson(this);

  @override
  String toString() => toJson().toString();
}

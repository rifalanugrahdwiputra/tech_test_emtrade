// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_content_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleContentRequestModel _$ArticleContentRequestModelFromJson(
        Map<String, dynamic> json) =>
    ArticleContentRequestModel(
      page: (json['page'] as num?)?.toInt(),
      size: (json['size'] as num?)?.toInt(),
      sort: json['sort'] as String?,
      query: json['query'] as String?,
    );

Map<String, dynamic> _$ArticleContentRequestModelToJson(
        ArticleContentRequestModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
      'sort': instance.sort,
      'query': instance.query,
    };

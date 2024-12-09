// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_content_remote_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleContentRemoteResponse _$ArticleContentRemoteResponseFromJson(
        Map<String, dynamic> json) =>
    ArticleContentRemoteResponse(
      id: (json['id'] as num?)?.toInt(),
      isPremiumContent: json['isPremiumContent'] as bool?,
      contentFormat: json['contentFormat'] as String?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      shortContent: json['shortContent'] as String?,
      publishedAt: json['publishedAt'] as String?,
      publishedAtDetail: json['publishedAtDetail'] as String?,
      image: json['image'] as String?,
      thumbnail: json['thumbnail'] as String?,
      seoTitle: json['seoTitle'] as String?,
      seoDescription: json['seoDescription'] as String?,
      seoKeyword: json['seoKeyword'] as String?,
      seoSlug: json['seoSlug'] as String?,
      seoImageUrl: json['seoImageUrl'] as String?,
      category: json['category'] as String?,
      categoryIcon: json['categoryIcon'] as String?,
      videoDuration: json['videoDuration'] as String?,
      updatedAt: json['updatedAt'] as String?,
      updatedAtDetail: json['updatedAtDetail'] as String?,
    );

Map<String, dynamic> _$ArticleContentRemoteResponseToJson(
        ArticleContentRemoteResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isPremiumContent': instance.isPremiumContent,
      'contentFormat': instance.contentFormat,
      'name': instance.name,
      'slug': instance.slug,
      'shortContent': instance.shortContent,
      'publishedAt': instance.publishedAt,
      'publishedAtDetail': instance.publishedAtDetail,
      'image': instance.image,
      'thumbnail': instance.thumbnail,
      'seoTitle': instance.seoTitle,
      'seoDescription': instance.seoDescription,
      'seoKeyword': instance.seoKeyword,
      'seoSlug': instance.seoSlug,
      'seoImageUrl': instance.seoImageUrl,
      'category': instance.category,
      'categoryIcon': instance.categoryIcon,
      'videoDuration': instance.videoDuration,
      'updatedAt': instance.updatedAt,
      'updatedAtDetail': instance.updatedAtDetail,
    };

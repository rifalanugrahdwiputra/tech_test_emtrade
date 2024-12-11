// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_content_remote_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleContentRemoteResponse _$ArticleContentRemoteResponseFromJson(
        Map<String, dynamic> json) =>
    ArticleContentRemoteResponse(
      id: (json['id'] as num?)?.toInt(),
      isPremiumContent: json['is_premium_content'] as bool?,
      contentFormat: json['content_format'] as String?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      shortContent: json['short_content'] as String?,
      publishedAt: json['published_at'] as String?,
      publishedAtDetail: json['published_at_detail'] as String?,
      image: json['image'] as String?,
      thumbnail: json['thumbnail'] as String?,
      seoTitle: json['seo_title'] as String?,
      seoDescription: json['seo_description'] as String?,
      seoKeyword: json['seo_keyword'] as String?,
      seoSlug: json['seo_slug'] as String?,
      seoImageUrl: json['seo_image_url'] as String?,
      category: json['category'] as String?,
      categoryIcon: json['category_icon'] as String?,
      videoDuration: json['video_duration'] as String?,
      updatedAt: json['updated_at'] as String?,
      updatedAtDetail: json['updated_at_detail'] as String?,
    );

Map<String, dynamic> _$ArticleContentRemoteResponseToJson(
        ArticleContentRemoteResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'is_premium_content': instance.isPremiumContent,
      'content_format': instance.contentFormat,
      'name': instance.name,
      'slug': instance.slug,
      'short_content': instance.shortContent,
      'published_at': instance.publishedAt,
      'published_at_detail': instance.publishedAtDetail,
      'image': instance.image,
      'thumbnail': instance.thumbnail,
      'seo_title': instance.seoTitle,
      'seo_description': instance.seoDescription,
      'seo_keyword': instance.seoKeyword,
      'seo_slug': instance.seoSlug,
      'seo_image_url': instance.seoImageUrl,
      'category': instance.category,
      'category_icon': instance.categoryIcon,
      'video_duration': instance.videoDuration,
      'updated_at': instance.updatedAt,
      'updated_at_detail': instance.updatedAtDetail,
    };

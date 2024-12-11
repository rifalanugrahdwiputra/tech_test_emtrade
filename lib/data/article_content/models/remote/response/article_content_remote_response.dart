import 'package:emtrade_tech_test/data/utils/models/remote/remote_response_mapper.dart';
import 'package:json_annotation/json_annotation.dart';
import '../../../../../domain/article_content/data/article_content_data.dart';

part 'article_content_remote_response.g.dart';

@JsonSerializable()
class ArticleContentRemoteResponse implements ResponseMapper<ArticleContentData> {
  @JsonKey(name: 'id')
  final int? id;

  @JsonKey(name: 'is_premium_content')
  final bool? isPremiumContent;

  @JsonKey(name: 'content_format')
  final String? contentFormat;

  @JsonKey(name: 'name')
  final String? name;

  @JsonKey(name: 'slug')
  final String? slug;

  @JsonKey(name: 'short_content')
  final String? shortContent;

  @JsonKey(name: 'published_at')
  final String? publishedAt;

  @JsonKey(name: 'published_at_detail')
  final String? publishedAtDetail;

  @JsonKey(name: 'image')
  final String? image;

  @JsonKey(name: 'thumbnail')
  final String? thumbnail;

  @JsonKey(name: 'seo_title')
  final String? seoTitle;

  @JsonKey(name: 'seo_description')
  final String? seoDescription;

  @JsonKey(name: 'seo_keyword')
  final String? seoKeyword;

  @JsonKey(name: 'seo_slug')
  final String? seoSlug;

  @JsonKey(name: 'seo_image_url')
  final String? seoImageUrl;

  @JsonKey(name: 'category')
  final String? category;

  @JsonKey(name: 'category_icon')
  final String? categoryIcon;

  @JsonKey(name: 'video_duration')
  final String? videoDuration;

  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @JsonKey(name: 'updated_at_detail')
  final String? updatedAtDetail;

  const ArticleContentRemoteResponse({
    this.id,
    this.isPremiumContent,
    this.contentFormat,
    this.name,
    this.slug,
    this.shortContent,
    this.publishedAt,
    this.publishedAtDetail,
    this.image,
    this.thumbnail,
    this.seoTitle,
    this.seoDescription,
    this.seoKeyword,
    this.seoSlug,
    this.seoImageUrl,
    this.category,
    this.categoryIcon,
    this.videoDuration,
    this.updatedAt,
    this.updatedAtDetail,
  });

  factory ArticleContentRemoteResponse.fromJson(Map<String, dynamic> json) =>
      _$ArticleContentRemoteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleContentRemoteResponseToJson(this);

  @override
  String toString() => toJson().toString();

  @override
  ArticleContentData toDomain() {
    return ArticleContentData(
      id: id,
      isPremiumContent: isPremiumContent,
      contentFormat: contentFormat,
      name: name,
      slug: slug,
      shortContent: shortContent,
      publishedAt: publishedAt,
      publishedAtDetail: publishedAtDetail,
      image: image,
      thumbnail: thumbnail,
      seoTitle: seoTitle,
      seoDescription: seoDescription,
      seoKeyword: seoKeyword,
      seoSlug: seoSlug,
      seoImageUrl: seoImageUrl,
      category: category,
      categoryIcon: categoryIcon,
      videoDuration: videoDuration,
      updatedAt: updatedAt,
      updatedAtDetail: updatedAtDetail,
    );
  }
}

// ignore_for_file: depend_on_referenced_packages

import 'package:emtrade_tech_test/data/utils/models/remote/remote_response_mapper.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../../domain/article_content/data/article_content_data.dart';

part 'article_content_remote_response.g.dart';

@JsonSerializable()
class ArticleContentRemoteResponse implements ResponseMapper<ArticleContentData> {
  final int? id;
  final bool? isPremiumContent;
  final String? contentFormat;
  final String? name;
  final String? slug;
  final String? shortContent;
  final String? publishedAt;
  final String? publishedAtDetail;
  final String? image;
  final String? thumbnail;
  final String? seoTitle;
  final String? seoDescription;
  final String? seoKeyword;
  final String? seoSlug;
  final String? seoImageUrl;
  final String? category;
  final String? categoryIcon;
  final String? videoDuration;
  final String? updatedAt;
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

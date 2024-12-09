import 'package:equatable/equatable.dart';

class ArticleContentData extends Equatable {
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

  const ArticleContentData({
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

  @override
  List<Object?> get props => [
        id,
        isPremiumContent,
        contentFormat,
        name,
        slug,
        shortContent,
        publishedAt,
        publishedAtDetail,
        image,
        thumbnail,
        seoTitle,
        seoDescription,
        seoKeyword,
        seoSlug,
        seoImageUrl,
        category,
        categoryIcon,
        videoDuration,
        updatedAt,
        updatedAtDetail,
      ];
}

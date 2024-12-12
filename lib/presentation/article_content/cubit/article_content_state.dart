import 'package:emtrade_tech_test/domain/article_content/data/categories_data.dart';
import 'package:equatable/equatable.dart';
import 'package:emtrade_tech_test/domain/article_content/data/article_content_data.dart';

abstract class ArticleContentState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ArticleContentInitial extends ArticleContentState {}

class ArticleContentLoading extends ArticleContentState {}

class ArticleContentLoadingLoadMore extends ArticleContentState {}

class ArticleContentSuccess extends ArticleContentState {

  ArticleContentSuccess();

  @override
  List<Object?> get props => [];
}

class ArticleContentError extends ArticleContentState {
  final String message;

  ArticleContentError(this.message);

  @override
  List<Object?> get props => [message];
}

class ArticleContentLoaded extends ArticleContentState {
  final List<ArticleContentData>? articleContentListData;
  final List<CategoriesData>? categoriesData;
  final List<CategoriesData>? selectedCategories;

  ArticleContentLoaded(
    this.articleContentListData,
    this.categoriesData,
    this.selectedCategories,
  );

  ArticleContentLoaded copyWith({
     List<ArticleContentData>? articleContentListData,
     List<CategoriesData>? categoriesData,
     List<CategoriesData>? selectedCategories,
  }) {
    return ArticleContentLoaded(
      articleContentListData ?? this.articleContentListData,
      categoriesData ?? this.categoriesData,
      selectedCategories ?? this.selectedCategories,
    );
  }

  @override
  List<Object?> get props => [
        articleContentListData,
        categoriesData,
        selectedCategories,
      ];
}

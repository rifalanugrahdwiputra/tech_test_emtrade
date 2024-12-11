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

  ArticleContentLoaded(
    this.articleContentListData,
  );

  ArticleContentLoaded copyWith({
     List<ArticleContentData>? articleContentListData,
  }) {
    return ArticleContentLoaded(
      articleContentListData ?? this.articleContentListData,
    );
  }

  @override
  List<Object?> get props => [
        articleContentListData,
      ];
}

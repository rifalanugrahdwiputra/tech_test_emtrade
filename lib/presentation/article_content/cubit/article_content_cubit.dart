import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:emtrade_tech_test/domain/article_content/usecases/article_content_params.dart';
import 'package:emtrade_tech_test/domain/article_content/usecases/article_content_usecase.dart';
import 'package:emtrade_tech_test/presentation/article_content/cubit/article_content_state.dart';

@injectable
class ArticleContentCubit extends Cubit<ArticleContentState> {
  final ArticleContentUsecase _articleContentUsecase;
  TextEditingController controller = TextEditingController();
  Timer? _debounce;
  
  int currentPage = 1;
  int currentSize = 10;
  bool isLoadingMore = false;
  
   ArticleContentCubit(this._articleContentUsecase)
      : super(ArticleContentInitial()) {
    controller.addListener(_onSearchChanged);
  }

  void _onSearchChanged() {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 100), () {
      resetPagination();
      articleContentList();
    });
  }

  void resetPagination() {
    currentPage = 1;
    currentSize = 10;
  }

  void getContent() async {
    emit(ArticleContentLoaded(
      null,
    ));
  }

  Future<void> articleContentList() async {
    if (isLoadingMore) return;
    emit(ArticleContentLoading());
    final params = ArticleContentParams(
      page: currentPage,
      size: currentSize,
      sort: "published_at DESC",
      query: "search:${controller.text}",
    );
    
    final result = await _articleContentUsecase.call(params);
    result.when(
      success: (result) {
        emit(ArticleContentLoaded(result.data));
      },
      error: (e) {
        emit(ArticleContentError(e.message));
      },
    );
  }

  Future<void> articleContentLoadMoreList() async {
    emit(ArticleContentLoadingLoadMore());
    if (isLoadingMore) return;
    final params = ArticleContentParams(
      page: currentPage,
      size: currentSize,
      sort: "published_at DESC",
      query: "search:${controller.text}",
    );
    
    final result = await _articleContentUsecase.call(params);
    result.when(
      success: (result) {
        final newList = result.data;

        if (newList.isEmpty || newList.length < currentSize) {
          isLoadingMore = true;
        } else {
          currentSize += 10;
        }
        emit(ArticleContentLoaded(newList));
      },
      error: (e) {
        emit(ArticleContentError(e.message));
      },
    );
  }

  Future<void> loadMore() async {
    if (isLoadingMore) return;
    await articleContentLoadMoreList();
  }

  @override
  Future<void> close() {
    _debounce?.cancel();
    controller.dispose();
    return super.close();
  }
}

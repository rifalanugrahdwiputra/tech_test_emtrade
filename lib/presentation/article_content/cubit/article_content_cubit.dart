import 'dart:async';

import 'package:emtrade_tech_test/domain/article_content/data/categories_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
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
  int currentSize = 30;
  bool isLoadingMore = false;
  
  ArticleContentCubit(this._articleContentUsecase)
    : super(ArticleContentInitial()) {
    controller.addListener(_onSearchChanged);
  }

  final List<CategoriesData> listCategories = [
    const CategoriesData(
      key: 'pemula',
      name: 'Pemula',
    ),
    const CategoriesData(
      key: 'insight',
      name: 'Insight',
    ),
    const CategoriesData(
      key: 'perencanaan-keuangan',
      name: 'Perencanaan Keuangan',
    ),
  ];

  void updateSelectedCategories(CategoriesData categories) {
    if (state is ArticleContentLoaded) {
      final currentState = state as ArticleContentLoaded;
      List<CategoriesData> selectedCategories = List.from(currentState.selectedCategories ?? []);
      if (!selectedCategories.contains(categories)) {
        selectedCategories.add(categories);
        emit(currentState.copyWith(selectedCategories: selectedCategories));
      } else {
        selectedCategories.remove(categories);
        emit(currentState.copyWith(selectedCategories: selectedCategories));
      }
    }
  }

  void resetSelectedCategories() {
    if (state is ArticleContentLoaded) {
      final currentState = state as ArticleContentLoaded;
      emit(currentState.copyWith(selectedCategories: []));
    }
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
      null,
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
        emit(ArticleContentLoaded(result.data, listCategories, null));
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
        emit(ArticleContentLoaded(newList, listCategories, null));
      },
      error: (e) {
        emit(ArticleContentError(e.message));
      },
    );
  }

  Future<void> savedFilteredByCategories(BuildContext context) async {
    if (isLoadingMore) return;
    final selectedCategoryKeys = (state is ArticleContentLoaded)
      ? (state as ArticleContentLoaded).selectedCategories
          ?.map((category) => category.key)
          .toList()
      : [];
    final selectedCategories = (state as ArticleContentLoaded).selectedCategories;
    final categoryQuery = (selectedCategoryKeys != null && selectedCategoryKeys.isNotEmpty)
      ? ",category_name:${selectedCategoryKeys.join('|')}"
      : "";
    final params = ArticleContentParams(
      page: currentPage,
      size: currentSize,
      sort: "published_at DESC",
      query: "search:${controller.text}$categoryQuery",
    );
    emit(ArticleContentLoading());
    final result = await _articleContentUsecase.call(params);
    result.when(
      success: (result) {
        context.pop();
        Future.delayed(const Duration(milliseconds: 500));
        emit(ArticleContentLoaded(result.data, listCategories, selectedCategories));
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

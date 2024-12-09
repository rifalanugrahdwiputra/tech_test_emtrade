import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:emtrade_tech_test/domain/article_content/usecases/article_content_params.dart';
import 'package:emtrade_tech_test/domain/article_content/usecases/article_content_usecase.dart';
import 'package:emtrade_tech_test/presentation/article_content/bloc/article_content_state.dart';

@injectable
class ArticleContentCubit extends Cubit<ArticleContentState> {
  final ArticleContentUsecase _articleContentUsecase;
  ArticleContentCubit(this._articleContentUsecase)
      : super(ArticleContentInitial());

  void getContent() async {
    emit(ArticleContentLoaded(
      null,
    ));
  }

  Future<void> articleContentList({required ArticleContentParams params}) async {
    final currentState = state;
    if (currentState is ArticleContentLoaded) {
      final result = await _articleContentUsecase
                .call(params);
            result.when(success: (result) {
              emit(
                currentState.copyWith(
                  articleContentListData: result.data,
                ),
              );
            }, error: (e) {
              emit(
                currentState.copyWith(
                  articleContentListData: null,
                ),
              );
            },
        );
    }
  }
}

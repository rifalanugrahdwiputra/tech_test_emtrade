import 'package:injectable/injectable.dart';

import '../../../core/common/domain/ba_base_use_case.dart';
import '../../../core/common/domain/ba_result_entity.dart';
import '../data/article_content_data.dart';
import '../repositories/article_content_repository.dart';
import 'article_content_params.dart';

@lazySingleton
class ArticleContentUsecase
    implements UseCaseWithParams<ArticleContentParams, List<ArticleContentData>> {
  final ArticleContentRepository _articleContentRepository;

  ArticleContentUsecase(this._articleContentRepository);

  @override
  Future<ResultEntity<List<ArticleContentData>>> call(
      ArticleContentParams params) async {
    return await _articleContentRepository.articleContentList(params);
  }
}

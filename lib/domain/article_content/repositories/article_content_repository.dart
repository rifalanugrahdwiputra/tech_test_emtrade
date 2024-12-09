import 'package:emtrade_tech_test/core/common/domain/ba_result_entity.dart';

import '../data/article_content_data.dart';
import '../usecases/article_content_params.dart';

abstract class ArticleContentRepository {
  Future<ResultEntity<List<ArticleContentData>>> articleContentList(
    ArticleContentParams params,
  );
}

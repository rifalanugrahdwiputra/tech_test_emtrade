
import 'package:injectable/injectable.dart';

import '../models/remote/request/article_content_request_model.dart';
import '../models/remote/response/article_content_remote_response.dart';
import '../services/article_content_remote_service.dart';

abstract class ArticleContentRemoteDataSource {
  Future<List<ArticleContentRemoteResponse>> articleContentList(
    ArticleContentRequestModel model,
  );
}

@LazySingleton(as: ArticleContentRemoteDataSource)
class ArticleContentRemoteDataSourceImpl
    extends ArticleContentRemoteDataSource {
  final ArticleContentRemoteService _articleContentRemoteService;

  ArticleContentRemoteDataSourceImpl(this._articleContentRemoteService);

  @override
  Future<List<ArticleContentRemoteResponse>> articleContentList(
      ArticleContentRequestModel model) async {
    final response = await _articleContentRemoteService.articleContentList(model);
    return response.data;
  }
}

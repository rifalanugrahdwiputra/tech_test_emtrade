import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../core/common/domain/ba_result_entity.dart';
import '../../../domain/article_content/data/article_content_data.dart';
import '../../../domain/article_content/repositories/article_content_repository.dart';
import '../../../domain/article_content/usecases/article_content_params.dart';
import '../../utils/ba_dio_error_handler.dart';
import '../data_sources/article_content_remote_data_source.dart';
import '../models/remote/request/article_content_request_model.dart';

@LazySingleton(as: ArticleContentRepository)
class ArticleContentRepositoryImpl extends ArticleContentRepository {
  final ArticleContentRemoteDataSource _remoteDataSource;
  final BADioErrHandler _remoteErrorHandler;

  ArticleContentRepositoryImpl(this._remoteDataSource, this._remoteErrorHandler);

  @override
  Future<ResultEntity<List<ArticleContentData>>> articleContentList(ArticleContentParams params) async {
    try {
      final result = await _remoteDataSource.articleContentList(
        ArticleContentRequestModel(
          page: params.page,
          size: params.size,
          sort: params.sort,
          query: params.query,
        )
      );
      return ResultEntity.success(
          data: result.map((e) => e.toDomain()).toList());
    } on DioException catch (e) {
      return _remoteErrorHandler.handleDioError(e) ??
          ResultEntity.error(message: e.message);
    } catch (e) {
      return ResultEntity.error(message: e.toString());
    }
  }
}

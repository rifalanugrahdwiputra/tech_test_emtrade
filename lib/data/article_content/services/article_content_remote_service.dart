
import 'package:dio/dio.dart';
import 'package:emtrade_tech_test/core/common/data/remote/response/ba_base_success_response.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:emtrade_tech_test/data/utils/dio/base/base_ret_network_client.dart';

import '../../constants/ba_apis.dart';
import '../models/remote/request/article_content_request_model.dart';
import '../models/remote/response/article_content_remote_response.dart';

part 'article_content_remote_service.g.dart';

@RestApi()
abstract class ArticleContentRemoteService {
  @factoryMethod
  factory ArticleContentRemoteService(BaseRetNetworkClient client,
      {String baseUrl}) = _ArticleContentRemoteService;

  @GET(BAApis.articleContent)
  Future<BABaseSuccessResponse<List<ArticleContentRemoteResponse>>> articleContentList(
    @Queries() ArticleContentRequestModel model,
  );
}

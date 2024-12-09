import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:emtrade_tech_test/data/article_content/services/article_content_remote_service.dart';
import 'package:injectable/injectable.dart';
import 'package:emtrade_tech_test/common/env/env.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@lazySingleton
class BaseRetNetworkClient extends DioForNative {
  BaseRetNetworkClient() {
    _configureOptions();
    _configureInterceptors();
  }

  void _configureOptions() async {
    options.baseUrl = BAEnvironment().baseUrl;
    options.connectTimeout =
        const Duration(seconds: BAEnvironment.connectionTimeout);
    options.receiveTimeout =
        const Duration(seconds: BAEnvironment.receiveTimeout);
    options.responseType = ResponseType.json;

    final currentEnv = await BAEnvironment().getCurrentEnv();
    await _configureSSLPinning(currentEnv);
  }

  Future<void> _configureSSLPinning(BAEnvironmentType currentEnv) async {
    httpClientAdapter = IOHttpClientAdapter(createHttpClient: () {
      final HttpClient client =
          HttpClient(context: SecurityContext(withTrustedRoots: false));
      client.badCertificateCallback = (cert, host, port) => true;
      return client;
    });
  }

  void _configureInterceptors() {
    interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
    ));
  }
}

@module
abstract class BaseProductRetrofitInjectableModule {
  ArticleContentRemoteService getArticleContentRemoteService(
          BaseRetNetworkClient client) =>
      ArticleContentRemoteService(client);
}

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:template_mobile_apps/data/product/services/product_remote_service.dart';
import 'package:injectable/injectable.dart';
import 'package:template_mobile_apps/common/env/env.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

@lazySingleton
class ProductRetNetworkClient extends DioForNative {
  ProductRetNetworkClient() {
    _configureOptions();
    _configureInterceptors();
  }

  void _configureOptions() async {
    options.baseUrl = FAEnvironment().productUrl;
    options.connectTimeout =
        const Duration(seconds: FAEnvironment.connectionTimeout);
    options.receiveTimeout =
        const Duration(seconds: FAEnvironment.receiveTimeout);
    options.responseType = ResponseType.json;

    final currentEnv = await FAEnvironment().getCurrentEnv();
    await _configureSSLPinning(currentEnv);
  }

  Future<void> _configureSSLPinning(FAEnvironmentType currentEnv) async {
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
  ProductRemoteService getProductRemoteService(
          ProductRetNetworkClient client) =>
      ProductRemoteService(client);
}

// ignore_for_file: depend_on_referenced_packages

import 'package:envied/envied.dart';
import 'package:package_info/package_info.dart';

part 'dev_env.dart';

part 'env.g.dart';

enum FAEnvironmentType { layout, dev }

class FAEnvironment {
  late final String _classificationUrl;
  late final String _productUrl;

  static final FAEnvironment _singleton = FAEnvironment._internal();

  factory FAEnvironment() => _singleton;

  FAEnvironment._internal();

  Future<FAEnvironmentType> getCurrentEnv() async {
    final packageInfo = await PackageInfo.fromPlatform();
    switch (packageInfo.packageName) {
      case "com.ebdesk.pilkada.layout":
        return FAEnvironmentType.layout;
      case "com.ebdesk.pilkada.dev":
        return FAEnvironmentType.dev;

      default:
        return FAEnvironmentType.dev;
    }
  }

  Future<void> initEnv() async {
    Future.wait([
      _getBasedUrlBasedOnEnv(),
    ]);
  }

  Future<void> _getBasedUrlBasedOnEnv() async {
    final currentEnv = await getCurrentEnv();
    if (currentEnv == FAEnvironmentType.dev ||
        currentEnv == FAEnvironmentType.layout) {
      _classificationUrl = FADevEnv.classificationUrl;
      _productUrl = FADevEnv.productUrl;
    }
  }

  static const int receiveTimeout = 20000;

  static const int connectionTimeout = 20000;

  String get classificationUrl => _classificationUrl;

  String get productUrl => _productUrl;
}

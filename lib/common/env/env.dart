// ignore_for_file: depend_on_referenced_packages

import 'package:envied/envied.dart';
import 'package:package_info/package_info.dart';

part 'dev_env.dart';

part 'env.g.dart';

enum BAEnvironmentType { layout, dev }

class BAEnvironment {
  late final String _baseUrl;

  static final BAEnvironment _singleton = BAEnvironment._internal();

  factory BAEnvironment() => _singleton;

  BAEnvironment._internal();

  Future<BAEnvironmentType> getCurrentEnv() async {
    final packageInfo = await PackageInfo.fromPlatform();
    switch (packageInfo.packageName) {
      case "com.emtrade.layout":
        return BAEnvironmentType.layout;
      case "com.emtrade.dev":
        return BAEnvironmentType.dev;

      default:
        return BAEnvironmentType.dev;
    }
  }

  Future<void> initEnv() async {
    Future.wait([
      _getBasedUrlBasedOnEnv(),
    ]);
  }

  Future<void> _getBasedUrlBasedOnEnv() async {
    final currentEnv = await getCurrentEnv();
    if (currentEnv == BAEnvironmentType.dev ||
        currentEnv == BAEnvironmentType.layout) {
      _baseUrl = BADevEnv.baseUrl;
    }
  }

  static const int receiveTimeout = 20000;

  static const int connectionTimeout = 20000;

  String get baseUrl => _baseUrl;
}

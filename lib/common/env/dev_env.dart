part of 'env.dart';

@Envied(path: "config/.dev.env", obfuscate: true)
abstract class BADevEnv {
  @EnviedField(varName: 'BASE_URL')
  static String baseUrl = _BADevEnv.baseUrl;
}

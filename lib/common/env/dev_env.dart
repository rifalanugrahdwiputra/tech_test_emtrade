part of 'env.dart';

@Envied(path: "config/.dev.env", obfuscate: true)
abstract class FADevEnv {
  @EnviedField(varName: 'CLASSIFICATION_URL')
  static String classificationUrl = _FADevEnv.classificationUrl;

  @EnviedField(varName: 'PRODUCT_URL')
  static String productUrl = _FADevEnv.productUrl;
}

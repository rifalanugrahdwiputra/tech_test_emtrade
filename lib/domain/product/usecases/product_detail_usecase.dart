import 'package:template_mobile_apps/core/common/domain/fa_base_use_case.dart';
import 'package:template_mobile_apps/core/common/domain/fa_result_entity.dart';
import 'package:template_mobile_apps/domain/product/data/product_data.dart';
import 'package:template_mobile_apps/domain/product/repositories/product_repository.dart';
import 'package:template_mobile_apps/domain/product/usecases/product_detail_params.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ProductDetailUsecase
    implements UseCaseWithParams<ProductDetailParams, ProductData> {
  final ProductRepository _productRepository;

  ProductDetailUsecase(this._productRepository);

  @override
  Future<ResultEntity<ProductData>> call(
      ProductDetailParams params) async {
    return await _productRepository.productDetail(params);
  }
}

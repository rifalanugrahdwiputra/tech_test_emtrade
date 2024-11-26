import 'package:template_mobile_apps/core/common/domain/fa_base_use_case.dart';
import 'package:template_mobile_apps/core/common/domain/fa_result_entity.dart';
import 'package:template_mobile_apps/domain/product/data/product_data.dart';
import 'package:template_mobile_apps/domain/product/repositories/product_repository.dart';
import 'package:template_mobile_apps/domain/product/usecases/product_list_params.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ProductListUsecase
    implements UseCaseWithParams<ProductListParams, List<ProductData>> {
  final ProductRepository _productRepository;

  ProductListUsecase(this._productRepository);

  @override
  Future<ResultEntity<List<ProductData>>> call(
      ProductListParams params) async {
    return await _productRepository.productList(params);
  }
}

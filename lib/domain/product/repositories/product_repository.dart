import 'package:template_mobile_apps/core/common/domain/fa_result_entity.dart';
import 'package:template_mobile_apps/domain/product/data/product_data.dart';
import 'package:template_mobile_apps/domain/product/usecases/product_detail_params.dart';
import 'package:template_mobile_apps/domain/product/usecases/product_list_params.dart';

abstract class ProductRepository {
  Future<ResultEntity<List<ProductData>>> productList(
    ProductListParams params,
  );

  Future<ResultEntity<ProductData>> productDetail(
    ProductDetailParams params,
  );
}

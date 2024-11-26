import 'package:template_mobile_apps/data/product/models/remote/request/product_request_model.dart';
import 'package:template_mobile_apps/data/product/models/remote/response/product_remote_response.dart';
import 'package:template_mobile_apps/data/product/services/product_remote_service.dart';
import 'package:injectable/injectable.dart';

abstract class ProductRemoteDataSource {
  Future<List<ProductRemoteResponse>> productList(
    ProductRequestModel model,
  );

  Future<ProductRemoteResponse> productDetail(
    int id,
  );
}

@LazySingleton(as: ProductRemoteDataSource)
class ProductRemoteDataSourceImpl
    extends ProductRemoteDataSource {
  final ProductRemoteService _productRemoteService;

  ProductRemoteDataSourceImpl(this._productRemoteService);

  @override
  Future<List<ProductRemoteResponse>> productList(
      ProductRequestModel model) async {
    final response = await _productRemoteService.productList(model);
    return response.results;
  }

  @override
  Future<ProductRemoteResponse> productDetail(
      int id) async {
    final response = await _productRemoteService.productDetail(id);
    return response.results;
  }
}

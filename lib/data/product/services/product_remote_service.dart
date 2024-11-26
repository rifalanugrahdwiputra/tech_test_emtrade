
import 'package:dio/dio.dart';
import 'package:template_mobile_apps/core/common/data/remote/response/fa_base_success_response.dart';
import 'package:template_mobile_apps/data/constants/fa_apis.dart';
import 'package:template_mobile_apps/data/product/models/remote/request/product_request_model.dart';
import 'package:template_mobile_apps/data/product/models/remote/response/product_remote_response.dart';
import 'package:template_mobile_apps/data/utils/dio/base/product_ret_network_client.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'product_remote_service.g.dart';

@RestApi()
abstract class ProductRemoteService {
  @factoryMethod
  factory ProductRemoteService(ProductRetNetworkClient client,
      {String baseUrl}) = _ProductRemoteService;

  @GET(FAApis.product)
  Future<FABaseSuccessResponse<List<ProductRemoteResponse>>> productList(
    @Queries() ProductRequestModel model,
  );

  @GET("${FAApis.detailProduct}/{id}")
  Future<FABaseSuccessResponse<ProductRemoteResponse>> productDetail(
    @Path("id") int id,
  );
}

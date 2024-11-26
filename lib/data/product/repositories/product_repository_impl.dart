import 'package:dio/dio.dart';
import 'package:template_mobile_apps/core/common/domain/fa_result_entity.dart';
import 'package:template_mobile_apps/data/product/data_sources/product_remote_data_source.dart';
import 'package:template_mobile_apps/data/product/models/remote/request/product_request_model.dart';
import 'package:template_mobile_apps/data/utils/fa_dio_error_handler.dart';
import 'package:template_mobile_apps/domain/product/data/product_data.dart';
import 'package:template_mobile_apps/domain/product/repositories/product_repository.dart';
import 'package:template_mobile_apps/domain/product/usecases/product_detail_params.dart';
import 'package:template_mobile_apps/domain/product/usecases/product_list_params.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ProductRepository)
class ProductRepositoryImpl extends ProductRepository {
  final ProductRemoteDataSource _remoteDataSource;
  final FADioErrHandler _remoteErrorHandler;

  ProductRepositoryImpl(this._remoteDataSource, this._remoteErrorHandler);

  @override
  Future<ResultEntity<List<ProductData>>> productList(ProductListParams params) async {
    try {
      final result = await _remoteDataSource.productList(
        ProductRequestModel(
          orderBy: params.orderBy,
          sortBy: params.sortBy,
          limit: params.limit,
          page: params.page,
          category: params.category,
        )
      );
      return ResultEntity.success(
          results: result.map((e) => e.toDomain()).toList());
    } on DioException catch (e) {
      return _remoteErrorHandler.handleDioError(e) ??
          ResultEntity.error(message: e.message);
    } catch (e) {
      return ResultEntity.error(message: e.toString());
    }
  }

  @override
  Future<ResultEntity<ProductData>> productDetail(ProductDetailParams params) async {
    try {
      final result = await _remoteDataSource.productDetail(
        params.id,
      );
      return ResultEntity.success(
          results: result.toDomain(),
      );
    } on DioException catch (e) {
      return _remoteErrorHandler.handleDioError(e) ??
          ResultEntity.error(message: e.message);
    } catch (e) {
      return ResultEntity.error(message: e.toString());
    }
  }
}

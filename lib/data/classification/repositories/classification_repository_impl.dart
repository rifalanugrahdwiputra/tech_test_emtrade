import 'package:dio/dio.dart';
import 'package:template_mobile_apps/core/common/domain/fa_result_entity.dart';
import 'package:template_mobile_apps/data/classification/data_sources/classification_remote_data_source.dart';
import 'package:template_mobile_apps/data/utils/fa_dio_error_handler.dart';
import 'package:template_mobile_apps/domain/classification/repositories/classfication_repository.dart';
import 'package:template_mobile_apps/domain/classification/data/classfication_image_data.dart';
import 'package:template_mobile_apps/domain/classification/usecases/classification_image_params.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ClassficationRepository)
class ClassficationRepositoryImpl extends ClassficationRepository {
  final ClassificationRemoteDataSource _remoteDataSource;
  final FADioErrHandler _remoteErrorHandler;

  ClassficationRepositoryImpl(this._remoteDataSource, this._remoteErrorHandler);

  @override
  Future<ResultEntity<List<ClassficationImageData>>> classificationImage(
      ClassificationImageParams params) async {
    try {
      final result = await _remoteDataSource.classificationImage(
        params.files,
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
}

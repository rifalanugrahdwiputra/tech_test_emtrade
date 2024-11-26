import 'dart:io';

import 'package:template_mobile_apps/data/classification/models/remote/response/classification_image_remote_response.dart';
import 'package:template_mobile_apps/data/classification/services/classification_remote_service.dart';
import 'package:injectable/injectable.dart';

abstract class ClassificationRemoteDataSource {
  Future<List<ClassificationImageRemoteResponse>> classificationImage(
      File files);
}

@LazySingleton(as: ClassificationRemoteDataSource)
class ClassificationRemoteDataSourceImpl
    extends ClassificationRemoteDataSource {
  final ClassificationRemoteService _classificationRemoteService;

  ClassificationRemoteDataSourceImpl(this._classificationRemoteService);

  @override
  Future<List<ClassificationImageRemoteResponse>> classificationImage(
    File files,
  ) async {
    final response =
        await _classificationRemoteService.classificationImage(files);
    return response.results;
  }
}

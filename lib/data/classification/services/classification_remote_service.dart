import 'dart:io';

import 'package:dio/dio.dart';
import 'package:template_mobile_apps/core/common/data/remote/response/fa_base_success_response.dart';
import 'package:template_mobile_apps/data/classification/models/remote/response/classification_image_remote_response.dart';
import 'package:template_mobile_apps/data/constants/fa_apis.dart';
import 'package:template_mobile_apps/data/utils/dio/base/classification_ret_network_client.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'classification_remote_service.g.dart';

@RestApi()
abstract class ClassificationRemoteService {
  @factoryMethod
  factory ClassificationRemoteService(ClassificationRetApiDio client,
      {String baseUrl}) = _ClassificationRemoteService;

  @POST(FAApis.classification)
  @MultiPart()
  Future<FABaseSuccessResponse<List<ClassificationImageRemoteResponse>>>
      classificationImage(
    @Part(name: "files") File files,
  );
}

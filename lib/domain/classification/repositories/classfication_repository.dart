import 'package:template_mobile_apps/core/common/domain/fa_result_entity.dart';
import 'package:template_mobile_apps/domain/classification/data/classfication_image_data.dart';
import 'package:template_mobile_apps/domain/classification/usecases/classification_image_params.dart';

abstract class ClassficationRepository {
  Future<ResultEntity<List<ClassficationImageData>>> classificationImage(
    ClassificationImageParams params,
  );
}

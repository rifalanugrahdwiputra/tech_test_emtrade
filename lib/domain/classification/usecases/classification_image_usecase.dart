import 'package:template_mobile_apps/core/common/domain/fa_base_use_case.dart';
import 'package:template_mobile_apps/core/common/domain/fa_result_entity.dart';
import 'package:template_mobile_apps/domain/classification/data/classfication_image_data.dart';
import 'package:template_mobile_apps/domain/classification/repositories/classfication_repository.dart';
import 'package:template_mobile_apps/domain/classification/usecases/classification_image_params.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ClassificationImageUsecase
    implements
        UseCaseWithParams<ClassificationImageParams,
            List<ClassficationImageData>> {
  final ClassficationRepository _classficationRepository;

  ClassificationImageUsecase(this._classficationRepository);

  @override
  Future<ResultEntity<List<ClassficationImageData>>> call(
      ClassificationImageParams params) async {
    return await _classficationRepository.classificationImage(params);
  }
}

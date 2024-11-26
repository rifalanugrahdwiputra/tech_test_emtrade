import 'package:template_mobile_apps/core/common/domain/fa_result_entity.dart';

abstract class UseCaseWithParams<Params, ReturnType> {
  Future<ResultEntity<ReturnType>> call(Params params);
}

abstract class UseCase<ReturnType> {
  Future<ResultEntity<ReturnType>> call();
}

ResultError<T> baseErrorIncompleteTransaction<T>(
    ResultEntity previousTransaction) {
  return ResultError<T>(message: (previousTransaction as ResultError).message);
}

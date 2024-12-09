import 'package:emtrade_tech_test/core/common/domain/ba_result_entity.dart';

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

import 'package:equatable/equatable.dart';

mixin ResultEntity<T> {
  void when({
    Function(ResultSuccess<T>)? success,
    Function(ResultError)? error,
  }) {
    if (this is ResultError) {
      if (error != null) error(this as ResultError);
    } else {
      if (success != null) success(this as ResultSuccess<T>);
    }
  }

  static ResultSuccess<T> success<T>({required T results}) {
    return ResultSuccess(
      results: results,
    );
  }

  static ResultError<T> error<T>({required message, List<dynamic>? details}) {
    return ResultError(message: message, details: details);
  }
}

class ResultSuccess<T> extends Equatable with ResultEntity<T> {
  final T results;

  ResultSuccess({required this.results});

  @override
  List<Object?> get props => [results];
}

class ResultError<T> extends Equatable with ResultEntity<T> {
  final String message;
  final List<dynamic>? details;

  ResultError({
    required this.message,
    this.details,
  });

  @override
  List<Object?> get props => [message, details];
}

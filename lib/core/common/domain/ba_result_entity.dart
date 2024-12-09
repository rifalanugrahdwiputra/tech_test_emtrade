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

  static ResultSuccess<T> success<T>({required T data}) {
    return ResultSuccess(
      data: data,
    );
  }

  static ResultError<T> error<T>({required message, List<dynamic>? details}) {
    return ResultError(message: message, details: details);
  }
}

class ResultSuccess<T> extends Equatable with ResultEntity<T> {
  final T data;

  ResultSuccess({required this.data});

  @override
  List<Object?> get props => [data];
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

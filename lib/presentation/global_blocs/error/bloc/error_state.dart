part of 'error_cubit.dart';

abstract class GlobalErrorState extends Equatable {
  const GlobalErrorState();
}

class ErrorIdle extends GlobalErrorState {
  @override
  List<Object?> get props => [];
}

class ErrorScreenState extends GlobalErrorState {
  final ErrorTypeEnum errorType;
  final void Function()? confirmCallback;

  const ErrorScreenState({required this.errorType, this.confirmCallback});

  @override
  List<Object?> get props => [errorType, confirmCallback];
}

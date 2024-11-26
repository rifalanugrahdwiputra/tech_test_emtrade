part of 'clasification_cubit.dart';

abstract class ClasificationState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ClasificationInitial extends ClasificationState {}

class ClasificationLoading extends ClasificationState {}

class ClasificationSuccess extends ClasificationState {
  final String progress;

  ClasificationSuccess(this.progress);

  @override
  List<Object?> get props => [progress];
}

class ClasificationError extends ClasificationState {
  final String message;

  ClasificationError(this.message);

  @override
  List<Object?> get props => [message];
}

class ClasificationLoaded extends ClasificationState {
  final File? clasificationCertificate;

  ClasificationLoaded(
    this.clasificationCertificate,
  );

  ClasificationLoaded copyWith({
    File? clasificationCertificate,
  }) {
    return ClasificationLoaded(
      clasificationCertificate ?? this.clasificationCertificate,
    );
  }

  @override
  List<Object?> get props => [
        clasificationCertificate,
      ];
}

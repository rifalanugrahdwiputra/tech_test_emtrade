import 'package:equatable/equatable.dart';

abstract class BAException extends Equatable implements Exception {
  final String message;

  const BAException(this.message);

  @override
  List<Object?> get props => [message];
}

class CacheException extends BAException {
  const CacheException() : super("ERR_CACHE_EXCEPTION");
}

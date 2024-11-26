import 'package:equatable/equatable.dart';

abstract class FAException extends Equatable implements Exception {
  final String message;

  const FAException(this.message);

  @override
  List<Object?> get props => [message];
}

class CacheException extends FAException {
  const CacheException() : super("ERR_CACHE_EXCEPTION");
}

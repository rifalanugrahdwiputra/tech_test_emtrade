import 'package:equatable/equatable.dart';

class ProductDetailParams extends Equatable {
  final int id;

  const ProductDetailParams({
    required this.id,
  });

  @override
  List<Object> get props => [
        id,
      ];
}

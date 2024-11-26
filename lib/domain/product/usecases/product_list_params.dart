import 'package:equatable/equatable.dart';

class ProductListParams extends Equatable {
  final String? orderBy;
  final String? sortBy;
  final int? limit;
  final int? page;
  final String? category;

  const ProductListParams({
    this.orderBy,
    this.sortBy,
    this.limit,
    this.page,
    this.category,
  });

  @override
  List<Object?> get props => [
        orderBy,
        sortBy,
        limit,
        page,
        category,
      ];
}

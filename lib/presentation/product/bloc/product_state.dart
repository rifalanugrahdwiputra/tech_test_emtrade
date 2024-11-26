part of 'product_cubit.dart';

abstract class ProductState extends Equatable {
  @override
  List<Object?> get props => [];
}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductSuccess extends ProductState {

  ProductSuccess();

  @override
  List<Object?> get props => [];
}

class ProductError extends ProductState {
  final String message;

  ProductError(this.message);

  @override
  List<Object?> get props => [message];
}

class ProductLoaded extends ProductState {
  final List<ProductData>? productListData;
  final ProductData? productDetailData;

  ProductLoaded(
    this.productListData,
    this.productDetailData,
  );

  ProductLoaded copyWith({
     List<ProductData>? productListData,
     ProductData? productDetailData,
  }) {
    return ProductLoaded(
      productListData ?? this.productListData,
      productDetailData ?? this.productDetailData,
    );
  }

  @override
  List<Object?> get props => [
        productListData,
        productDetailData,
      ];
}

import 'package:equatable/equatable.dart';

class ProductData extends Equatable {
  final int? id;
  final String? nameProduct;
  final int? price;
  final int? discPrice;
  final String? image;
  final String? category;
  final String? descProduct;
  final String? colour;
  final String? size;

  const ProductData({
    this.id,
    this.nameProduct,
    this.price,
    this.discPrice,
    this.image,
    this.category,
    this.descProduct,
    this.colour,
    this.size,
  });

  @override
  List<Object?> get props => [
        id,
        nameProduct,
        price,
        discPrice,
        image,
        category,
        descProduct,
        colour,
        size,
      ];
}

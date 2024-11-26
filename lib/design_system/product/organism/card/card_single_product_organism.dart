import 'package:template_mobile_apps/design_system/product/moleculs/icon/icon_favorite_moleculs.dart';
import 'package:template_mobile_apps/design_system/product/moleculs/title/title_price_disc_moleculs.dart';
import 'package:template_mobile_apps/design_system/product/moleculs/title/title_price_moleculs.dart';
import 'package:template_mobile_apps/design_system/product/moleculs/title/title_product_name_moleculs.dart';
import 'package:flutter/material.dart';

class CardSingleProductOrganism extends StatelessWidget {
  final String image;
  final String titleProduct;
  final String price;
  final String priceDisc;
  final VoidCallback onPressed;

  const CardSingleProductOrganism({
    super.key,
    required this.image,
    required this.titleProduct,
    required this.price,
    required this.priceDisc,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Container(
            height: 150.0,
            width: 150.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TitleProductNameMoleculs(title: titleProduct),
                    const IconFavoriteMoleculs(),
                  ],
                ),
                const SizedBox(height: 5.0),
                Row(
                  children: [
                    TitlePriceDiscMoleculs(priceDisc: priceDisc),
                    const SizedBox(width: 20.0),
                    TitlePriceMoleculs(price: price),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

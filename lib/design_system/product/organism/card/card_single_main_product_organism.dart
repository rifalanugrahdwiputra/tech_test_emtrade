// ignore_for_file: deprecated_member_use

import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/product/moleculs/title/title_price_moleculs.dart';
import 'package:template_mobile_apps/design_system/product/moleculs/title/title_product_name_moleculs.dart';
import 'package:template_mobile_apps/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardSingleMainProductOrganism extends StatelessWidget {
  final String image;
  final String titleProduct;
  final String price;
  final VoidCallback onPressed;

  const CardSingleMainProductOrganism({
    super.key,
    required this.image,
    required this.titleProduct,
    required this.price,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Container(
            height: 80.0,
            width: 180.0,
            decoration: const BoxDecoration(
              color: AppColors.grey,
            ),
            child: Row(
              children: [
                Container(
                  height: 80.0,
                  width: 80.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 13.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleProductNameMoleculs(title: titleProduct, isTitle: true),
                      const SizedBox(height: 5.0),
                      TitlePriceMoleculs(price: price),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 5,
          right: 0,
          child: GestureDetector(
            onTap: onPressed,
            child: Container(
              height: 30.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColors.primary,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 5.0,
                ),
                child: SvgPicture.asset(
                  Assets.icons.icFavorite,
                  color: AppColors.white,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          right: 0,
          child: GestureDetector(
            onTap: onPressed,
            child: Container(
              height: 20.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: AppColors.darkPrimary,
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 2,
                  horizontal: 10.0,
                ),
                child: Text(
                  "Add To Cart",
                  style: TextStyle(color: AppColors.primary),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

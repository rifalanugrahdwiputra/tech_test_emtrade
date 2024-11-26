import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/text/text.dart';
import 'package:template_mobile_apps/design_system/product/moleculs/title/title_price_disc_moleculs.dart';
import 'package:template_mobile_apps/design_system/product/moleculs/title/title_price_moleculs.dart';
import 'package:template_mobile_apps/design_system/product/moleculs/title/title_product_name_moleculs.dart';
import 'package:flutter/material.dart';

class CardSingleBestDealProductOrganism extends StatelessWidget {
  final String image;
  final String titleProduct;
  final String price;
  final String priceDisc;
  final VoidCallback onPressed;

  const CardSingleBestDealProductOrganism({
    super.key,
    required this.image,
    required this.titleProduct,
    required this.price,
    required this.priceDisc,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      decoration: const BoxDecoration(
        color: AppColors.grey,
      ),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  height: 70.0,
                  width: 70.0,
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
                      TitleProductNameMoleculs(title: titleProduct),
                      const SizedBox(height: 5.0),
                      Row(
                        children: [
                          TitlePriceMoleculs(price: price),
                          const SizedBox(width: 20.0),
                          TitlePriceDiscMoleculs(priceDisc: priceDisc),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
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
                child: FAText.bodySmallRegular(
                  text: "See Product",
                  textColor: AppColors.primary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

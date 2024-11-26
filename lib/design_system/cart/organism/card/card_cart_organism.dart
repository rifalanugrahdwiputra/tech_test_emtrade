import 'package:template_mobile_apps/common/extensions/on_string_extension.dart';
import 'package:template_mobile_apps/design_system/cart/moleculs/button/button_minus_cart_moleculs.dart';
import 'package:template_mobile_apps/design_system/cart/moleculs/button/button_plus_cart_moleculs.dart';
import 'package:template_mobile_apps/design_system/cart/moleculs/card/card_color_cart_moleculs.dart';
import 'package:template_mobile_apps/design_system/cart/moleculs/card/card_size_cart_moleculs.dart';
import 'package:template_mobile_apps/design_system/cart/moleculs/title/title_count_cart_moleculs.dart';
import 'package:template_mobile_apps/design_system/cart/moleculs/title/title_name_product_cart_moleculs.dart';
import 'package:template_mobile_apps/design_system/cart/moleculs/title/title_price_product_cart_moleculs.dart';
import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class CardCartOrganism extends StatelessWidget {
  final String image;
  final String titleProduct;
  final String price;
  final String? countCart;
  final bool isButton;
  final bool? isDetail;
  const CardCartOrganism({
    super.key,
    required this.image,
    required this.titleProduct,
    required this.price,
    this.countCart,
    this.isButton = false,
    this.isDetail = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.25),
            offset: const Offset(0, 4),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: [
                  Container(
                    height: 100.0,
                    width: 100.0,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 30.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleNameProductCartMoleculs(title: titleProduct),
                      const SizedBox(height: 5.0),
                      TitlePriceProductCartMoleculs(price: price),
                      const SizedBox(height: 5.0),
                      isDetail == true
                          ? Row(
                              children: [
                                const CardColorCartMoleculs(
                                    color: AppColors.sampleColor),
                                const SizedBox(width: 20.0),
                                CardSizeCartMoleculs(
                                    assets: Assets.icons.icSizeM),
                              ],
                            )
                          : Container(),
                    ],
                  ),
                ],
              ),
            ),
            countCart.isNotEmptyOrNull
                ? Column(
                    children: [
                      isButton == true
                          ? const ButtonMinusCartMoleculs()
                          : Container(),
                      isButton == true
                          ? const SizedBox(height: 10.0)
                          : Container(),
                      TitleCountCartMoleculs(value: countCart ?? ""),
                      isButton == true
                          ? const SizedBox(height: 10.0)
                          : Container(),
                      isButton == true
                          ? const ButtonPlusCartMoleculs()
                          : Container(),
                    ],
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}

import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/product/moleculs/detail/card/card_color_product_moleculs.dart';
import 'package:template_mobile_apps/design_system/profile/moleculs/desc/desc_main_moleculs.dart';
import 'package:template_mobile_apps/design_system/profile/moleculs/iconbutton/button_icon_main_moleculs.dart';
import 'package:template_mobile_apps/design_system/profile/moleculs/title/title_main_moleculs.dart';
import 'package:flutter/material.dart';

class BodyOrdersOrganism extends StatelessWidget {
  const BodyOrdersOrganism({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                CardColorProductMoleculs(color: AppColors.darkPrimary),
                SizedBox(width: 15.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleMainMoleculs(mainTitle: "Order #6424812"),
                    DescMainMoleculs(descMain: "2023-31-12"),
                  ],
                ),
              ],
            ),
            ButtonIconMainMoleculs(callback: () {}),
          ],
        ),
        const SizedBox(height: 10.0),
        const Divider(
          height: 1.0,
          color: AppColors.grey,
        )
      ],
    );
  }
}

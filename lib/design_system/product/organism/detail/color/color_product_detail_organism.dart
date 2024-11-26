import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/product/moleculs/detail/card/card_color_product_moleculs.dart';
import 'package:template_mobile_apps/design_system/product/moleculs/detail/title/title_color_detail_moleculs.dart';
import 'package:flutter/material.dart';

class ColorProductDetailOrganism extends StatelessWidget {
  const ColorProductDetailOrganism({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleColorDetailMoleculs(),
        SizedBox(height: 10.0),
        CardColorProductMoleculs(
          color: AppColors.sampleColor,
        ),
      ],
    );
  }
}

import 'package:template_mobile_apps/design_system/product/moleculs/detail/card/card_size_product_moleculs.dart';
import 'package:template_mobile_apps/design_system/product/moleculs/detail/title/title_size_detail_moleculs.dart';
import 'package:template_mobile_apps/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class SizeProductDetailOrganism extends StatelessWidget {
  const SizeProductDetailOrganism({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleSizeDetailMoleculs(),
        const SizedBox(height: 10.0),
        Row(
          children: [
            CardSizeProductMoleculs(assets: Assets.icons.icSizeS),
            const SizedBox(width: 10.0),
            CardSizeProductMoleculs(assets: Assets.icons.icSizeM),
            const SizedBox(width: 10.0),
            CardSizeProductMoleculs(assets: Assets.icons.icSizeL),
            const SizedBox(width: 10.0),
            CardSizeProductMoleculs(assets: Assets.icons.icSizeXl),
          ],
        )
      ],
    );
  }
}

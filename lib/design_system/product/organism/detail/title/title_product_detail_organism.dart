import 'package:template_mobile_apps/design_system/product/moleculs/detail/title/title_price_detail_moleculs.dart';
import 'package:template_mobile_apps/design_system/product/moleculs/detail/title/title_price_disc_Detail_moleculs.dart';
import 'package:template_mobile_apps/design_system/product/moleculs/detail/title/title_product_name_detail_moleculs.dart';
import 'package:flutter/material.dart';

class TitleProductDetailOrganism extends StatelessWidget {
  final String productName;
  final String priceDisc;
  final String price;
  const TitleProductDetailOrganism({
    super.key,
    required this.productName,
    required this.priceDisc,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: TitleProductNameDetailMoleculs(productName: productName),
        ),
        Row(
          children: [
            TitlePriceDiscDetailMoleculs(priceDisc: priceDisc),
            const SizedBox(width: 5.0),
            TitlePriceDetailMoleculs(price: price)
          ],
        ),
      ],
    );
  }
}

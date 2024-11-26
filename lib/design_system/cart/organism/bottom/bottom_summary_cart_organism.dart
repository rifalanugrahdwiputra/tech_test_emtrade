import 'package:template_mobile_apps/design_system/cart/moleculs/card/card_summary_dotted_cart_moleculs.dart';
import 'package:flutter/material.dart';

class BottomSummaryCartOrganism extends StatelessWidget {
  final String countPrice;
  const BottomSummaryCartOrganism({
    super.key,
    required this.countPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardSummaryDottedCartMoleculs(countPrice: countPrice),
      ],
    );
  }
}

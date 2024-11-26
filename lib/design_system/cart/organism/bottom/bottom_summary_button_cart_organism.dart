import 'package:template_mobile_apps/design_system/cart/moleculs/button/button_cart_moelculs.dart';
import 'package:template_mobile_apps/design_system/cart/moleculs/card/card_summary_dotted_cart_moleculs.dart';
import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:flutter/material.dart';

class BottomSummaryButtonCartOrganism extends StatelessWidget {
  final String countPrice;
  final VoidCallback callback;
  const BottomSummaryButtonCartOrganism({
    super.key,
    required this.countPrice,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardSummaryDottedCartMoleculs(countPrice: countPrice),
        const SizedBox(height: 45.0),
        ButtonCartMoelculs(
          callback: callback,
          text: "Checkout",
          buttonColor: AppColors.darkPrimary,
          textColor: AppColors.primary,
        ),
      ],
    );
  }
}

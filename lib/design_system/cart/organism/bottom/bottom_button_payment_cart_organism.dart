import 'package:template_mobile_apps/design_system/cart/moleculs/button/button_cart_moelculs.dart';
import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:flutter/material.dart';

class BottomButtonPaymentCartOrganism extends StatelessWidget {
  final VoidCallback callback;
  const BottomButtonPaymentCartOrganism({
    super.key,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonCartMoelculs(
      callback: callback,
      text: "Place Order",
      buttonColor: AppColors.primary,
      textColor: AppColors.darkPrimary,
    );
  }
}

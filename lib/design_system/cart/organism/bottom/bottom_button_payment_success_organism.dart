import 'package:template_mobile_apps/design_system/cart/moleculs/button/button_cart_moelculs.dart';
import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:flutter/material.dart';

class BottomButtonPaymentSuccessOrganism extends StatelessWidget {
  final VoidCallback callback;
  const BottomButtonPaymentSuccessOrganism({
    super.key,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonCartMoelculs(
      callback: callback,
      text: "Order Detail",
      buttonColor: AppColors.darkPrimary,
      textColor: AppColors.primary,
    );
  }
}

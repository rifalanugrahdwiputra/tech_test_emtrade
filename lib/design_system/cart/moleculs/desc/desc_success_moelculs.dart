import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class DescSuccessMoelculs extends StatelessWidget {
  const DescSuccessMoelculs({super.key});

  @override
  Widget build(BuildContext context) {
    return FAText.titleMediumBold(
      text:
          "We received your order and we will contact \nyou through a phone call in the next 24H. \nYour order number is #6424812",
      textColor: AppColors.darkPrimary.withOpacity(0.60),
      textAlign: TextAlign.center,
    );
  }
}

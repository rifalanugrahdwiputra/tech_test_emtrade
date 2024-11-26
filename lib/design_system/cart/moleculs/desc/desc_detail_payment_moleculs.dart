import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class DescDetailPaymentMoleculs extends StatelessWidget {
  final String countPrice;
  const DescDetailPaymentMoleculs({
    super.key,
    required this.countPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const FAText.titleMediumSemiBold(
          text: "Total",
          textColor: AppColors.darkPrimary,
        ),
        FAText.titleMediumSemiBold(
          text: countPrice,
          textColor: AppColors.darkPrimary,
        ),
      ],
    );
  }
}

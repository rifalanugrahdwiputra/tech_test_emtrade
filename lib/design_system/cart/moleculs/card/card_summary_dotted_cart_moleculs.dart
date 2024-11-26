import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class CardSummaryDottedCartMoleculs extends StatelessWidget {
  final String countPrice;
  const CardSummaryDottedCartMoleculs({
    super.key,
    required this.countPrice,
  });

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: AppColors.darkPrimary,
      strokeWidth: 1,
      dashPattern: const [6, 3],
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
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
        ),
      ),
    );
  }
}

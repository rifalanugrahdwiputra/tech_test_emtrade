import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class CardButtonRecomendationClasificationMoleculs extends StatelessWidget {
  const CardButtonRecomendationClasificationMoleculs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: AppColors.darkPrimary,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(
          vertical: 5.0,
        ),
        child: FAText.bodyMediumBold(
          text: "Show Recommendation",
          textColor: AppColors.primary,
        ),
      ),
    );
  }
}

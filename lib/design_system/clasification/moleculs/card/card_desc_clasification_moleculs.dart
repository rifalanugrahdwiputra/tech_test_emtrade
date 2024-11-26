import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class CardDescClasificationMoleculs extends StatelessWidget {
  final String value;
  const CardDescClasificationMoleculs({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        border: Border.all(
          color: AppColors.darkPrimary,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 5.0,
        ),
        child: FAText.bodySmallRegular(
          text: value,
          textColor: AppColors.darkPrimary,
        ),
      ),
    );
  }
}

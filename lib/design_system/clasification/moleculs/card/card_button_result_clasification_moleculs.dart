import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class CardButtonResultClasificationMoleculs extends StatelessWidget {
  final String value;
  const CardButtonResultClasificationMoleculs({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.primary,
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
          horizontal: 55.0,
          vertical: 5.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FAText.titleLargeRegular(
              text: value,
              textColor: AppColors.darkPrimary,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

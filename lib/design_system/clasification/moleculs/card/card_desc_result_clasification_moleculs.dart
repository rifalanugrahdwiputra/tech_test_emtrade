import 'package:template_mobile_apps/common/extensions/on_string_extension.dart';
import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class CardDescResultClasificationMoleculs extends StatelessWidget {
  final String value;
  final String? percentage;
  const CardDescResultClasificationMoleculs({
    super.key,
    required this.value,
    this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 0.0,
          vertical: 5.0,
        ),
        child: percentage.isNotEmptyOrNull
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FAText.bodySmallBold(
                    text: value,
                    textColor: AppColors.darkPrimary,
                  ),
                  const SizedBox(width: 10.0),
                  FAText.bodySmallBold(
                    text: percentage ?? "",
                    textColor: AppColors.darkPrimary,
                  ),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FAText.bodySmallBold(
                    text: value,
                    textColor: AppColors.darkPrimary,
                  ),
                ],
              ),
      ),
    );
  }
}

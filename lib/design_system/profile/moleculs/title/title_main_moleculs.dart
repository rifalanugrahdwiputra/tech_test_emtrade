import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class TitleMainMoleculs extends StatelessWidget {
  final String mainTitle;
  const TitleMainMoleculs({
    super.key,
    required this.mainTitle,
  });

  @override
  Widget build(BuildContext context) {
    return FAText.titleMediumSemiBold(
      text: mainTitle,
      textColor: AppColors.darkPrimary,
    );
  }
}

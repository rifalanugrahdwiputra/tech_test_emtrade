import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class TitleAuthMoleculs extends StatelessWidget {
  final String titleText;
  const TitleAuthMoleculs({
    super.key,
    required this.titleText,
  });

  @override
  Widget build(BuildContext context) {
    return FAText.headlineMediumBold(
      text: titleText,
      textAlign: TextAlign.center,
      textColor: AppColors.darkPrimary,
    );
  }
}

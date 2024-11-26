import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class DescAuthMoleculs extends StatelessWidget {
  final String descText;
  const DescAuthMoleculs({
    super.key,
    required this.descText,
  });

  @override
  Widget build(BuildContext context) {
    return FAText.titleMediumBold(
      text: descText,
      textAlign: TextAlign.center,
      textColor: AppColors.darkPrimary.withOpacity(0.60),
    );
  }
}

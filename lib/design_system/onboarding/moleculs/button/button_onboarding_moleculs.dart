import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/button/button.dart';
import 'package:flutter/material.dart';

class ButtonOnboardingMoleculs extends StatelessWidget {
  final VoidCallback callBack;
  const ButtonOnboardingMoleculs({
    super.key,
    required this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    return FAButton.filled(
      text: "Get Started",
      onPressed: callBack,
      buttonColor: AppColors.primary,
      textColor: AppColors.darkPrimary,
    );
  }
}

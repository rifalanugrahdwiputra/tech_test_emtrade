import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/button/button.dart';
import 'package:flutter/material.dart';

class ButtonClasificationMoleculs extends StatelessWidget {
  final VoidCallback onPressed;
  const ButtonClasificationMoleculs({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FAButton.filled(
      height: 45.0,
      text: "I Understand",
      onPressed: onPressed,
      textColor: AppColors.primary,
      buttonColor: AppColors.darkPrimary,
    );
  }
}

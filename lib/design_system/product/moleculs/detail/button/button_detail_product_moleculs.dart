import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/button/button.dart';
import 'package:flutter/material.dart';

class ButtonDetailProductMoleculs extends StatelessWidget {
  final VoidCallback onPressed;
  const ButtonDetailProductMoleculs({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FAButton.filled(
      height: 45.0,
      text: "Add To Cart",
      onPressed: onPressed,
      textColor: AppColors.primary,
      buttonColor: AppColors.darkPrimary,
    );
  }
}

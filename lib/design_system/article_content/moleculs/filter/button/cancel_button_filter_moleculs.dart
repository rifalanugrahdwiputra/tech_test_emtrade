import 'package:emtrade_tech_test/design_system/commons/colors/colors.dart';
import 'package:emtrade_tech_test/design_system/commons/widget/button/button.dart';
import 'package:flutter/material.dart';

class CancelButtonFilterMoleculs extends StatelessWidget {
  final VoidCallback cancelOnPressed;
  const CancelButtonFilterMoleculs({super.key, required this.cancelOnPressed});

  @override
  Widget build(BuildContext context) {
    return BAButton.outlined(
      height: 48.0,
      text: "Batal", 
      onPressed: cancelOnPressed,
      textColor: AppColors.neutralBody,
      borderColor: AppColors.neutralButtonBorder,
      buttonColor: AppColors.white,
    );
  }
}
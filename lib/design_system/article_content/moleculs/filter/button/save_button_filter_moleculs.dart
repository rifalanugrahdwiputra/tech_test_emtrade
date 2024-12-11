import 'package:emtrade_tech_test/design_system/commons/colors/colors.dart';
import 'package:emtrade_tech_test/design_system/commons/widget/button/button.dart';
import 'package:flutter/material.dart';

class SaveButtonFilterMoleculs extends StatelessWidget {
  final VoidCallback saveOnPressed;
  const SaveButtonFilterMoleculs({super.key, required this.saveOnPressed});

  @override
  Widget build(BuildContext context) {
    return BAButton.outlined(
      height: 48.0,
      text: "Simpan", 
      onPressed: saveOnPressed,
      textColor: AppColors.secondaryOrange,
      borderColor: AppColors.secondaryOrangeBG,
      buttonColor: AppColors.secondaryOrangeBG,
      
    );
  }
}
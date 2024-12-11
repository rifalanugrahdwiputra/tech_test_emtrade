import 'package:emtrade_tech_test/design_system/commons/colors/colors.dart';
import 'package:emtrade_tech_test/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class ResetButtonTextFilterMoleculs extends StatelessWidget {
  const ResetButtonTextFilterMoleculs({super.key});

  @override
  Widget build(BuildContext context) {
    return const BAText.bodyMediumRegular(text: "Reset", textColor: AppColors.secondaryOrange);
  }
}
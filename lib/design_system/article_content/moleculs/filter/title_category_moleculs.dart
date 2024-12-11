import 'package:emtrade_tech_test/design_system/commons/colors/colors.dart';
import 'package:emtrade_tech_test/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class TitleCategoryMoleculs extends StatelessWidget {
  const TitleCategoryMoleculs({super.key});

  @override
  Widget build(BuildContext context) {
    return const BAText.titleMediumBold(text: "Category", textColor: AppColors.neutralTitle);
  }
}
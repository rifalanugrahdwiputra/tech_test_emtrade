import 'package:emtrade_tech_test/design_system/commons/colors/colors.dart';
import 'package:emtrade_tech_test/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class TitleFilterMoleculs extends StatelessWidget {
  const TitleFilterMoleculs({super.key});

  @override
  Widget build(BuildContext context) {
    return const BAText.titleExtraMediumBold(text: "Filter", textColor: AppColors.neutralTitle);
  }
}
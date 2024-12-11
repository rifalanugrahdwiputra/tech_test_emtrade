import 'package:emtrade_tech_test/design_system/commons/colors/colors.dart';
import 'package:emtrade_tech_test/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class TitleNegativeCaseMoleculs extends StatelessWidget {
  final String title;
  const TitleNegativeCaseMoleculs({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return BAText.titleMediumBold(text: title, textColor: AppColors.neutralTitle, textAlign: TextAlign.center,);
  }
}
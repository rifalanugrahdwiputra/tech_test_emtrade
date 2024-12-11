import 'package:emtrade_tech_test/design_system/commons/colors/colors.dart';
import 'package:emtrade_tech_test/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class ContentNegativeCaseMoleculs extends StatelessWidget {
  final String content;
  const ContentNegativeCaseMoleculs({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return BAText.bodyMediumRegular(text: content, textColor: AppColors.neutralBody, textAlign: TextAlign.center,);
  }
}
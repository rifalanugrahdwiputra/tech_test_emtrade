import 'package:emtrade_tech_test/design_system/commons/colors/colors.dart';
import 'package:emtrade_tech_test/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class ContentCardInformationMoleculs extends StatelessWidget {
  final String shortContent;
  const ContentCardInformationMoleculs({super.key, required this.shortContent});

  @override
  Widget build(BuildContext context) {
    return BAText.bodyMediumBold(text: shortContent, textColor: AppColors.neutralTitle, maxLines: 2, textOverflow: TextOverflow.ellipsis,);
  }
}
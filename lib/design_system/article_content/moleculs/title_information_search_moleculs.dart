import 'package:emtrade_tech_test/design_system/commons/colors/colors.dart';
import 'package:emtrade_tech_test/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class TitleInformationSearchMoleculs extends StatelessWidget {
  final String searchValue;
  const TitleInformationSearchMoleculs({super.key, required this.searchValue});

  @override
  Widget build(BuildContext context) {
    return BAText.titleMediumBold(
      text: 'Hasil Pencarian "$searchValue"', 
      textColor: AppColors.neutralTitle,
      maxLines: 1,
      textOverflow: TextOverflow.ellipsis,
    );
  }
}
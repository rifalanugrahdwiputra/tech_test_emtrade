import 'package:emtrade_tech_test/design_system/commons/colors/colors.dart';
import 'package:emtrade_tech_test/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class DateCardInformationMoleculs extends StatelessWidget {
  final String date;
  const DateCardInformationMoleculs({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return BAText.bodySmallRegular(text: date, textColor: AppColors.neutralCaption, maxLines: 1, textOverflow: TextOverflow.ellipsis,);
  }
}
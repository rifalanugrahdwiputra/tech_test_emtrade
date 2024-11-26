import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class TitleProgressMoleculs extends StatelessWidget {
  final String title;
  const TitleProgressMoleculs({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return FAText.bodySmallSemiBold(
      text: title,
      textColor: AppColors.darkPrimary,
    );
  }
}
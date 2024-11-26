import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class DescMainMoleculs extends StatelessWidget {
  final String descMain;
  const DescMainMoleculs({
    super.key,
    required this.descMain,
  });

  @override
  Widget build(BuildContext context) {
    return FAText.bodySmallRegular(
      text: descMain,
      textColor: AppColors.blackLow,
    );
  }
}
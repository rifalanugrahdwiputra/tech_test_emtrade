import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class TitleSizeDetailMoleculs extends StatelessWidget {
  const TitleSizeDetailMoleculs({super.key});

  @override
  Widget build(BuildContext context) {
    return const FAText.bodyMediumBold(
      text: "Size",
      textColor: AppColors.darkPrimary,
    );
  }
}

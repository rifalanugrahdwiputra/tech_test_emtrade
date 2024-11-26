import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class TitleColorDetailMoleculs extends StatelessWidget {
  const TitleColorDetailMoleculs({super.key});

  @override
  Widget build(BuildContext context) {
    return const FAText.bodyMediumBold(
      text: "Color",
      textColor: AppColors.darkPrimary,
    );
  }
}

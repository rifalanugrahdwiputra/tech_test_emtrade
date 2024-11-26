import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class TextbuttonAuthLoginMoleculs extends StatelessWidget {
  const TextbuttonAuthLoginMoleculs({super.key});

  @override
  Widget build(BuildContext context) {
    return const FAText.bodyExtraSmallRegular(
      text: "Forgot Password",
      textColor: AppColors.darkPrimary,
    );
  }
}

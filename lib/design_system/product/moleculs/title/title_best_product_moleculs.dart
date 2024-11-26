import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class TitleBestProductMoleculs extends StatelessWidget {
  const TitleBestProductMoleculs({super.key});

  @override
  Widget build(BuildContext context) {
    return const FAText.titleLargeBold(
      text: "Best Products",
      textColor: AppColors.darkPrimary,
    );
  }
}
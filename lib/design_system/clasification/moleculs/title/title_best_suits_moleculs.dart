import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class TitleBestSuitsMoleculs extends StatelessWidget {
  const TitleBestSuitsMoleculs({super.key});

  @override
  Widget build(BuildContext context) {
    return const FAText.titleLargeBold(
      text: "Best Suits For You",
      textColor: AppColors.darkPrimary,
    );
  }
}

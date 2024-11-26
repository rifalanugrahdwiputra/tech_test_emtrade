import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class TitleSuccessMoleculs extends StatelessWidget {
  const TitleSuccessMoleculs({super.key});

  @override
  Widget build(BuildContext context) {
    return const FAText.headlineSmallBold(
      text: "Your Order is Completed",
      textColor: AppColors.darkPrimary,
      textAlign: TextAlign.center,
    );
  }
}

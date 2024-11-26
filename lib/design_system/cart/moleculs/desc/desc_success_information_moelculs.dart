import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class DescSuccessInformationMoelculs extends StatelessWidget {
  const DescSuccessInformationMoelculs({super.key});

  @override
  Widget build(BuildContext context) {
    return FAText.bodySmallBold(
      text:
          "You can track your order by going to your profile and \nselect all orders then select your recent order",
      textColor: AppColors.darkPrimary.withOpacity(0.60),
    );
  }
}

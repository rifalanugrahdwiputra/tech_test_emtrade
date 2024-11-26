import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class TitleInformationPaymentMoleculs extends StatelessWidget {
  final String title;
  const TitleInformationPaymentMoleculs({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return FAText.bodyMediumRegular(
      text: title,
      textColor: AppColors.darkPrimary,
    );
  }
}

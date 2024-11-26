import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class DescResultDetailClasificationMoelculs extends StatelessWidget {
  final String value;
  const DescResultDetailClasificationMoelculs({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return FAText.bodyMediumSemiBold(
      text: value,
      textColor: AppColors.darkPrimary,
    );
  }
}

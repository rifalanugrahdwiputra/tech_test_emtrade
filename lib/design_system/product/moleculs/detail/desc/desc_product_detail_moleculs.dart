import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class DescProductDetailMoleculs extends StatelessWidget {
  final String desc;
  const DescProductDetailMoleculs({
    super.key,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return FAText.bodySmallRegular(
      text: desc,
      textColor: AppColors.darkPrimary,
    );
  }
}

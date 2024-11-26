import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class TitleProductNameDetailMoleculs extends StatelessWidget {
  final String productName;
  const TitleProductNameDetailMoleculs({
    super.key,
    required this.productName,
  });

  @override
  Widget build(BuildContext context) {
    return FAText.titleLargeBold(
      text: productName,
      textColor: AppColors.darkPrimary,
    );
  }
}

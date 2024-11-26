import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class TitlePriceMoleculs extends StatelessWidget {
  final String price;
  const TitlePriceMoleculs({
    super.key,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return FAText.bodySmallRegular(
      text: price,
      textColor: AppColors.darkPrimary,
    );
  }
}

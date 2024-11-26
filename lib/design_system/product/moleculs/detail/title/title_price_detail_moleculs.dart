import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class TitlePriceDetailMoleculs extends StatelessWidget {
  final String price;
  const TitlePriceDetailMoleculs({
    super.key,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return FAText.headlineExtraSmallRegular(
      text: price,
      textColor: AppColors.darkPrimary,
    );
  }
}

import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class TitlePriceDiscDetailMoleculs extends StatelessWidget {
  final String priceDisc;
  const TitlePriceDiscDetailMoleculs({
    super.key,
    required this.priceDisc,
  });

  @override
  Widget build(BuildContext context) {
    return FAText.headlineExtraSmallRegular(
      text: priceDisc,
      textStyle: const TextStyle(
        fontFamily: "Khula",
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontSize: 22,
        decoration: TextDecoration.lineThrough,
        letterSpacing: 0.25,
      ),
      textColor: AppColors.discPrice,
    );
  }
}

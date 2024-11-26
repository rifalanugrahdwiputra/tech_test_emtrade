import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:flutter/material.dart';

class CardImageDescDetailClasificationMoleculs extends StatelessWidget {
  final String image;
  const CardImageDescDetailClasificationMoleculs({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
        border: Border.all(
          color: AppColors.primary,
          width: 1.0,
        ),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}

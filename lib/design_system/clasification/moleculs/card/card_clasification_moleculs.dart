import 'dart:io';

import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:flutter/material.dart';

class CardClasificationMoleculs extends StatelessWidget {
  final String image;
  const CardClasificationMoleculs({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 327.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: FileImage(File(image)),
          fit: BoxFit.cover,
        ),
        border: Border.all(
          color: AppColors.black,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TitleImageMainMoleculs extends StatelessWidget {
  final String imagePath;
  final double? height;
  const TitleImageMainMoleculs({
    super.key,
    required this.imagePath,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      imagePath,
      height: height ?? 40,
    );
  }
}

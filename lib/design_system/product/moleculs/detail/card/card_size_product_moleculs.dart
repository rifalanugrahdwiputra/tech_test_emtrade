import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardSizeProductMoleculs extends StatelessWidget {
  final String assets;
  const CardSizeProductMoleculs({
    super.key,
    required this.assets,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assets,
      height: 17.0,
    );
  }
}

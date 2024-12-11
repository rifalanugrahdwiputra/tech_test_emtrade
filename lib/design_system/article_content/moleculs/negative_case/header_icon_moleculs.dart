import 'package:emtrade_tech_test/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class HeaderIconMoleculs extends StatelessWidget {
  const HeaderIconMoleculs({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(Assets.images.imgNegativeCase.path, height: 180.0, width: 180.0,);
  }
}
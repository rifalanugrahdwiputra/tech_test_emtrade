import 'package:template_mobile_apps/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class BackgroundAuthMoleculs extends StatelessWidget {
  const BackgroundAuthMoleculs({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.images.imgBgMain.path,
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
    );
  }
}

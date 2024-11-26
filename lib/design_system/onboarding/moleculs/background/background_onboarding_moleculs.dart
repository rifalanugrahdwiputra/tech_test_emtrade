import 'package:template_mobile_apps/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class BackgroundOnboardingMoleculs extends StatelessWidget {
  const BackgroundOnboardingMoleculs({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.images.imgBgSplash.path,
      fit: BoxFit.cover,
      width: double.infinity,
      height: double.infinity,
    );
  }
}

import 'package:template_mobile_apps/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class HeaderLogoOnboardingMoleculs extends StatelessWidget {
  const HeaderLogoOnboardingMoleculs({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.images.imgPrimaryLogo.path,
      height: 438.0,
      width: 438.0,
    );
  }
}

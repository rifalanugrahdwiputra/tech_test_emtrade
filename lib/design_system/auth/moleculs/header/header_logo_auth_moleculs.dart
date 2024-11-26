import 'package:template_mobile_apps/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class HeaderLogoAuthMoleculs extends StatelessWidget {
  const HeaderLogoAuthMoleculs({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.images.imgPrimaryLogo.path,
      height: 122.0,
      width: 117.0,
    );
  }
}

import 'package:template_mobile_apps/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class HeaderProfileImageMoelculs extends StatelessWidget {
  const HeaderProfileImageMoelculs({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.images.imgDefaultProfile.path,
      height: 200.0,
    );
  }
}

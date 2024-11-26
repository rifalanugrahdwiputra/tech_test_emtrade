import 'package:template_mobile_apps/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class HeaderSuccessMoelculs extends StatelessWidget {
  const HeaderSuccessMoelculs({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.images.imgSuccessOrder.path,
      height: 300.0,
      width: 300.0,
    );
  }
}

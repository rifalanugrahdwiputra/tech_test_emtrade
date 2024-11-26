import 'package:template_mobile_apps/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonIconEditedMoleculs extends StatelessWidget {
  const ButtonIconEditedMoleculs({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      Assets.icons.icEditProfile,
      height: 40.0,
    );
  }
}

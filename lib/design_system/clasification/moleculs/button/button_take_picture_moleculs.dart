// ignore_for_file: deprecated_member_use

import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonTakePictureMoleculs extends StatelessWidget {
  const ButtonTakePictureMoleculs({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      Assets.icons.icSelectImage,
      color: AppColors.darkPrimary,
      height: 50.0,
    );
  }
}

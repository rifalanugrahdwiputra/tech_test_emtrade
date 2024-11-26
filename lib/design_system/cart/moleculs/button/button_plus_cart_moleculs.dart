import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonPlusCartMoleculs extends StatelessWidget {
  const ButtonPlusCartMoleculs({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      Assets.icons.icPlus,
      color: AppColors.darkPrimary,
      height: 20.0,
    );
  }
}

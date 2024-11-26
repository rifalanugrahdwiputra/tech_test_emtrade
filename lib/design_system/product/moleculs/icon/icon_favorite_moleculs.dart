import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconFavoriteMoleculs extends StatelessWidget {
  const IconFavoriteMoleculs({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      Assets.icons.icFavorite,
      height: 20.0,
      width: 20.0,
      // ignore: deprecated_member_use
      color: AppColors.primary,
    );
  }
}

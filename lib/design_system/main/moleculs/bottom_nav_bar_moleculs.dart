// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/gen/assets.gen.dart';

class BottomNavigationBarMoleculs extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavigationBarMoleculs({
    required this.currentIndex,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      useLegacyColorScheme: true,
      backgroundColor: AppColors.white,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          label: "",
          icon: SvgPicture.asset(
            Assets.icons.icHome,
            height: 32,
            color: AppColors.grey,
          ),
          activeIcon: SvgPicture.asset(
            Assets.icons.icHome,
            height: 32,
            color: AppColors.primary,
          ),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: SvgPicture.asset(
            Assets.icons.icSelectImage,
            height: 32,
            color: AppColors.grey,
          ),
          activeIcon: SvgPicture.asset(
            Assets.icons.icSelectImage,
            height: 32,
            color: AppColors.primary,
          ),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: SvgPicture.asset(
            Assets.icons.icCart,
            height: 32,
            color: AppColors.grey,
          ),
          activeIcon: SvgPicture.asset(
            Assets.icons.icCart,
            height: 32,
            color: AppColors.primary,
          ),
        ),
        BottomNavigationBarItem(
          label: "",
          icon: SvgPicture.asset(
            Assets.icons.icProfile,
            height: 28,
            color: AppColors.grey,
          ),
          activeIcon: SvgPicture.asset(
            Assets.icons.icProfile,
            height: 28,
            color: AppColors.primary,
          ),
        ),
      ],
      showSelectedLabels: false,
      showUnselectedLabels: false,
    );
  }
}

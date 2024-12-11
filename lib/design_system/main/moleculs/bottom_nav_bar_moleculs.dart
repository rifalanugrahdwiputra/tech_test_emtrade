// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:emtrade_tech_test/design_system/commons/colors/colors.dart';
import 'package:emtrade_tech_test/gen/assets.gen.dart';

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
      useLegacyColorScheme: false,
      backgroundColor: AppColors.white,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      items: [
        _buildBottomNavItem(Assets.icons.icHome, "Home"),
        _buildBottomNavItem(Assets.icons.icStockPick, "Stock Pick"),
        _buildBottomNavItem(Assets.icons.icEducation, "Education"),
        _buildBottomNavItem(Assets.icons.icAnalysis, "Analysis"),
        _buildBottomNavItem(Assets.icons.icAcademy, "Academy"),
      ],
      unselectedLabelStyle: _unselectedLabelStyle,
      selectedLabelStyle: _selectedLabelStyle,
    );
  }

  BottomNavigationBarItem _buildBottomNavItem(String iconPath, String label) {
    return BottomNavigationBarItem(
      label: label,
      icon: SvgPicture.asset(
        iconPath,
        height: 24,
        color: AppColors.neutralLabel,
      ),
      activeIcon: SvgPicture.asset(
        iconPath,
        height: 24,
        color: AppColors.secondaryOrange,
      ),
    );
  }

  TextStyle get _unselectedLabelStyle => const TextStyle(
        fontFamily: "Inter",
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontSize: 12,
        decoration: TextDecoration.none,
        letterSpacing: 0.25,
        color: AppColors.neutralLabel,
      );

  TextStyle get _selectedLabelStyle => const TextStyle(
        fontFamily: "Inter",
        fontWeight: FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontSize: 12,
        decoration: TextDecoration.none,
        letterSpacing: 0.25,
        color: AppColors.secondaryOrange,
      );
}

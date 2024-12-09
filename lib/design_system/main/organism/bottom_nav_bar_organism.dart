import 'package:emtrade_tech_test/design_system/main/moleculs/bottom_nav_bar_moleculs.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarOrganism extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavigationBarOrganism({
    required this.currentIndex,
    required this.onTap,
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBarMoleculs(
        currentIndex: currentIndex, onTap: onTap);
  }
}

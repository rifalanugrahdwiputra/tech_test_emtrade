import 'package:emtrade_tech_test/design_system/article_content/moleculs/icon_filter_appbar_moleculs.dart';
import 'package:emtrade_tech_test/design_system/article_content/moleculs/title_appbar_moleculs.dart';
import 'package:emtrade_tech_test/design_system/commons/colors/colors.dart';
import 'package:flutter/material.dart';

class AppbarOrganism extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback onClickFilter;

  const AppbarOrganism({super.key, required this.onClickFilter});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      title: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.0),
        child: TitleAppbarMoleculs(),
      ),
      centerTitle: false,
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: IconFilterAppbarMoleculs(
            onClickFilter: () => onClickFilter(),
          ),
        ),
      ],
      elevation: 0,
      shadowColor: Colors.transparent,
      foregroundColor: AppColors.white,
      surfaceTintColor: AppColors.white,
      shape: const Border(
        bottom: BorderSide(color: Color(0xFFEEEEEE), width: 1)
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

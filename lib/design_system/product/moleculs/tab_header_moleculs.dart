import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class TabHeaderMoleculs extends StatelessWidget {
  final int indexTab;
  final int indexController;
  final String label;
  const TabHeaderMoleculs({
    super.key,
    required this.indexTab,
    required this.label,
    required this.indexController,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSelected = indexTab == indexController;
    return Tab(
      child: isSelected
          ? FAText.titleMediumBold(
              text: label,
              textColor: AppColors.primary,
              textAlign: TextAlign.center,
            )
          : FAText.titleMediumBold(
              text: label,
              textColor: AppColors.blackLoader,
              textAlign: TextAlign.center,
            ),
    );
  }
}

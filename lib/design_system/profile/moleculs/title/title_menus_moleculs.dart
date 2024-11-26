import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class TitleMenusMoleculs extends StatelessWidget {
  final String titleMenus;
  const TitleMenusMoleculs({
    super.key,
    required this.titleMenus,
  });

  @override
  Widget build(BuildContext context) {
    return FAText.titleMediumBold(
      text: titleMenus,
      textColor: AppColors.blackLow,
    );
  }
}

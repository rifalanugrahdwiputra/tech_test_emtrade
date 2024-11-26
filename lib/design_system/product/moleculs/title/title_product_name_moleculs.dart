import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class TitleProductNameMoleculs extends StatelessWidget {
  final String title;
  final bool isTitle;
  const TitleProductNameMoleculs({
    super.key,
    required this.title,
    this.isTitle = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isTitle? 90 : 150,
      child: FAText.bodyMediumBold(
        text: title,
        textColor: AppColors.darkPrimary,
        textOverflow: TextOverflow.ellipsis,
      ),
    );
  }
}

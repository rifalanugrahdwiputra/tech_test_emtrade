import 'package:flutter/material.dart';
import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/button/button.dart';

class ContentButtonMoleculs extends StatelessWidget {
  final String text;
  final VoidCallback callback;
  const ContentButtonMoleculs(
      {super.key, required this.text, required this.callback});

  @override
  Widget build(BuildContext context) {
    return FAButton.outlined(
        text: text, textColor: AppColors.primary, onPressed: callback);
  }
}

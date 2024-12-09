import 'package:flutter/material.dart';
import 'package:emtrade_tech_test/design_system/commons/colors/colors.dart';
import 'package:emtrade_tech_test/design_system/commons/widget/button/button.dart';

class ContentButtonMoleculs extends StatelessWidget {
  final String text;
  final VoidCallback callback;
  const ContentButtonMoleculs(
      {super.key, required this.text, required this.callback});

  @override
  Widget build(BuildContext context) {
    return BAButton.outlined(
        text: text, textColor: AppColors.primary, onPressed: callback);
  }
}

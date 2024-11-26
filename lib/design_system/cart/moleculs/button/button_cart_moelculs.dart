import 'package:template_mobile_apps/design_system/commons/widget/button/button.dart';
import 'package:flutter/material.dart';

class ButtonCartMoelculs extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback callback;
  const ButtonCartMoelculs({
    super.key,
    required this.text,
    required this.buttonColor,
    required this.textColor,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return FAButton.filled(
      height: 45,
      text: text,
      onPressed: callback,
      textColor: textColor,
      buttonColor: buttonColor,
    );
  }
}

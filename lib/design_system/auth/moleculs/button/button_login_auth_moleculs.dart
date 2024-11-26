import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/button/button.dart';
import 'package:flutter/material.dart';

class ButtonLoginAuthMoleculs extends StatelessWidget {
  final VoidCallback callBackLogin;
  final bool isActive;
  const ButtonLoginAuthMoleculs({
    super.key,
    required this.callBackLogin,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return FAButton.filled(
      text: "Login",
      onPressed: callBackLogin,
      textColor: AppColors.darkPrimary,
      buttonColor: isActive ? AppColors.primary : AppColors.grey,
    );
  }
}

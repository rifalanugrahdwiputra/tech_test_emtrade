import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/button/button.dart';
import 'package:flutter/material.dart';

class ButtonRegisterAuthMoleculs extends StatelessWidget {
  final VoidCallback callBackRegister;
  final bool isActive;
  const ButtonRegisterAuthMoleculs({
    super.key,
    required this.callBackRegister,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return FAButton.filled(
      text: "Register",
      onPressed: callBackRegister,
      textColor: AppColors.darkPrimary,
      buttonColor: isActive ? AppColors.primary : AppColors.grey,
    );
  }
}

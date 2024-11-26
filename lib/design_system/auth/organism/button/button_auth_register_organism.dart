import 'package:template_mobile_apps/design_system/auth/moleculs/button/button_register_auth_moleculs.dart';
import 'package:flutter/material.dart';

class ButtonAuthRegisterOrganism extends StatelessWidget {
  final VoidCallback callBackRegister;
  const ButtonAuthRegisterOrganism({
    super.key,
    required this.callBackRegister,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 90.0),
      child: ButtonRegisterAuthMoleculs(
        callBackRegister: callBackRegister,
        isActive: true,
      ),
    );
  }
}

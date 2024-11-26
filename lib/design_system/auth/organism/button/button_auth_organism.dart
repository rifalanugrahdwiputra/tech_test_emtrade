import 'package:template_mobile_apps/design_system/auth/moleculs/button/button_login_auth_moleculs.dart';
import 'package:template_mobile_apps/design_system/auth/moleculs/button/button_register_auth_moleculs.dart';
import 'package:flutter/material.dart';

class ButtonAuthOrganism extends StatelessWidget {
  final VoidCallback callBackRegister;
  final VoidCallback callBackLogin;
  const ButtonAuthOrganism({
    super.key,
    required this.callBackRegister,
    required this.callBackLogin,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 90.0),
      child: Column(
        children: [
          ButtonRegisterAuthMoleculs(
            callBackRegister: callBackRegister,
            isActive: true,
          ),
          const SizedBox(height: 30.0),
          ButtonLoginAuthMoleculs(
            callBackLogin: callBackLogin,
            isActive: false,
          )
        ],
      ),
    );
  }
}

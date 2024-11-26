import 'package:template_mobile_apps/design_system/auth/moleculs/button/button_login_auth_moleculs.dart';
import 'package:flutter/material.dart';

class ButtonAuthLoginOrganism extends StatelessWidget {
  final VoidCallback callBackLogin;
  const ButtonAuthLoginOrganism({
    super.key,
    required this.callBackLogin,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 90.0),
      child: ButtonLoginAuthMoleculs(
        callBackLogin: callBackLogin,
        isActive: true,
      ),
    );
  }
}

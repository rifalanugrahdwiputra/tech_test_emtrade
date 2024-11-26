import 'package:template_mobile_apps/design_system/auth/moleculs/form/form_auth_email_moelculs.dart';
import 'package:template_mobile_apps/design_system/auth/moleculs/form/form_auth_password_moelculs.dart';
import 'package:template_mobile_apps/design_system/auth/moleculs/textbutton/textbutton_auth_login_moleculs.dart';
import 'package:flutter/material.dart';

class FormAuthLoginOrganism extends StatelessWidget {
  final Function(String) onChangedEmail;
  final TextEditingController textControllerEmail;
  final Function(String) onChangedPassword;
  final TextEditingController textControllerPassword;
  final VoidCallback callBackForgotPassword;
  const FormAuthLoginOrganism({
    super.key,
    required this.onChangedEmail,
    required this.textControllerEmail,
    required this.onChangedPassword,
    required this.textControllerPassword,
    required this.callBackForgotPassword,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FormAuthEmailMoelculs(
          onChanged: onChangedEmail,
          textController: textControllerEmail,
        ),
        const SizedBox(height: 20.0),
        FormAuthPasswordMoelculs(
          onChanged: onChangedPassword,
          textController: textControllerPassword,
        ),
        const SizedBox(height: 10.0),
        GestureDetector(
          onTap: callBackForgotPassword,
          child: const Row(
            children: [
              TextbuttonAuthLoginMoleculs(),
            ],
          ),
        ),
      ],
    );
  }
}

import 'package:template_mobile_apps/design_system/auth/moleculs/form/form_auth_email_moelculs.dart';
import 'package:template_mobile_apps/design_system/auth/moleculs/form/form_auth_password_moelculs.dart';
import 'package:template_mobile_apps/design_system/auth/moleculs/form/form_auth_text_moelculs.dart';
import 'package:flutter/material.dart';

class FormAuthRegisterOrganism extends StatelessWidget {
  final Function(String) onChangedFirstName;
  final TextEditingController textControllerFirstName;
  final Function(String) onChangedLastName;
  final TextEditingController textControllerLastName;
  final Function(String) onChangedEmail;
  final TextEditingController textControllerEmail;
  final Function(String) onChangedPassword;
  final TextEditingController textControllerPassword;
  const FormAuthRegisterOrganism({
    super.key,
    required this.onChangedFirstName,
    required this.textControllerFirstName,
    required this.onChangedLastName,
    required this.textControllerLastName,
    required this.onChangedEmail,
    required this.textControllerEmail,
    required this.onChangedPassword,
    required this.textControllerPassword,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FormAuthTextMoelculs(
          onChanged: onChangedFirstName,
          textController: textControllerFirstName,
          placeholder: "Masukan first name mu!",
        ),
        const SizedBox(height: 20.0),
        FormAuthTextMoelculs(
          onChanged: onChangedLastName,
          textController: textControllerLastName,
          placeholder: "Masukan last name mu!",
        ),
        const SizedBox(height: 20.0),
        FormAuthEmailMoelculs(
          onChanged: onChangedEmail,
          textController: textControllerEmail,
        ),
        const SizedBox(height: 20.0),
        FormAuthPasswordMoelculs(
          onChanged: onChangedPassword,
          textController: textControllerPassword,
        ),
      ],
    );
  }
}

import 'package:template_mobile_apps/design_system/profile/moleculs/form/form_email_moelculs.dart';
import 'package:template_mobile_apps/design_system/profile/moleculs/form/form_text_moelculs.dart';
import 'package:template_mobile_apps/design_system/profile/moleculs/header/header_profile_image_moelculs.dart';
import 'package:template_mobile_apps/design_system/profile/moleculs/iconbutton/button_icon_edited_moleculs.dart';
import 'package:template_mobile_apps/design_system/profile/moleculs/iconbutton/textbutton_forgot_password_moleculs.dart';
import 'package:flutter/material.dart';

class BodyFormEditedOrganism extends StatelessWidget {
  final Function(String) onChangedFirstName;
  final TextEditingController textControllerFirstName;
  final Function(String) onChangedLastName;
  final TextEditingController textControllerLastName;
  final Function(String) onChangedEmail;
  final TextEditingController textControllerEmail;
  final VoidCallback callBackForgotPassword;
  const BodyFormEditedOrganism({
    super.key,
    required this.onChangedFirstName,
    required this.textControllerFirstName,
    required this.onChangedLastName,
    required this.textControllerLastName,
    required this.onChangedEmail,
    required this.textControllerEmail,
    required this.callBackForgotPassword,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.0),
              child: HeaderProfileImageMoelculs(),
            ),
            Positioned(
              bottom: 20,
              right: 10,
              child: ButtonIconEditedMoleculs(),
            ),
          ],
        ),
        const SizedBox(height: 60.0),
        FormTextMoelculs(
          onChanged: onChangedFirstName,
          textController: textControllerFirstName,
          placeholder: "Masukan first name mu!",
        ),
        const SizedBox(height: 20.0),
        FormTextMoelculs(
          onChanged: onChangedLastName,
          textController: textControllerLastName,
          placeholder: "Masukan last name mu!",
        ),
        const SizedBox(height: 20.0),
        FormEmailMoelculs(
          onChanged: onChangedEmail,
          textController: textControllerEmail,
        ),
        const SizedBox(height: 10.0),
        GestureDetector(
          onTap: callBackForgotPassword,
          child: const Row(
            children: [
              TextbuttonForgotPasswordMoleculs(),
            ],
          ),
        ),
      ],
    );
  }
}

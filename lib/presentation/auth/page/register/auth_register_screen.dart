import 'package:template_mobile_apps/design_system/auth/organism/background/background_auth_organism.dart';
import 'package:template_mobile_apps/design_system/auth/organism/button/button_auth_register_organism.dart';
import 'package:template_mobile_apps/design_system/auth/organism/form/form_auth_register_organism.dart';
import 'package:template_mobile_apps/design_system/auth/organism/header/header_auth_register_organism.dart';
import 'package:template_mobile_apps/presentation/navigation/fa_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthRegisterScreen extends StatelessWidget {
  const AuthRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textControllerFirstName = TextEditingController();
    TextEditingController textControllerLastName = TextEditingController();
    TextEditingController textControllerEmail = TextEditingController();
    TextEditingController textControllerPassword = TextEditingController();
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundAuthOrganism(),
          Positioned(
            top: 100,
            bottom: 100,
            right: 0,
            left: 0,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const HeaderAuthRegisterOrganism(),
                  const SizedBox(height: 98.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 82.0),
                    child: FormAuthRegisterOrganism(
                      onChangedFirstName: (value) {},
                      textControllerFirstName: textControllerFirstName,
                      onChangedLastName: (value) {},
                      textControllerLastName: textControllerLastName,
                      onChangedEmail: (value) {},
                      textControllerEmail: textControllerEmail,
                      onChangedPassword: (value) {},
                      textControllerPassword: textControllerPassword,
                    ),
                  ),
                  const SizedBox(height: 52.0),
                  ButtonAuthRegisterOrganism(
                    callBackRegister: () {
                      context.pushReplacementNamed(FARoutes.nrMain);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

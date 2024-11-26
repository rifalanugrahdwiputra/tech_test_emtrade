import 'package:template_mobile_apps/design_system/auth/organism/background/background_auth_organism.dart';
import 'package:template_mobile_apps/design_system/auth/organism/button/button_auth_login_organism.dart';
import 'package:template_mobile_apps/design_system/auth/organism/form/form_auth_login_organism.dart';
import 'package:template_mobile_apps/design_system/auth/organism/header/header_auth_login_organism.dart';
import 'package:template_mobile_apps/presentation/navigation/fa_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthLoginScreen extends StatelessWidget {
  const AuthLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                  const HeaderAuthLoginOrganism(),
                  const SizedBox(height: 98.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 82.0),
                    child: FormAuthLoginOrganism(
                      onChangedEmail: (value) {},
                      textControllerEmail: textControllerEmail,
                      onChangedPassword: (value) {},
                      textControllerPassword: textControllerPassword,
                      callBackForgotPassword: () {},
                    ),
                  ),
                  const SizedBox(height: 52.0),
                  ButtonAuthLoginOrganism(
                    callBackLogin: () {
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

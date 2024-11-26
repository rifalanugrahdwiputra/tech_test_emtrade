import 'package:template_mobile_apps/design_system/auth/moleculs/desc/desc_auth_main_moleculs.dart';
import 'package:template_mobile_apps/design_system/auth/moleculs/header/header_logo_auth_moleculs.dart';
import 'package:template_mobile_apps/design_system/auth/moleculs/title/title_auth_moleculs.dart';
import 'package:flutter/material.dart';

class HeaderAuthRegisterOrganism extends StatelessWidget {
  const HeaderAuthRegisterOrganism({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 59.0),
      child: Column(
        children: [
          HeaderLogoAuthMoleculs(),
          TitleAuthMoleculs(
            titleText: "Let’s Register",
          ),
          DescAuthMainMoleculs(
            descText: "You already have an account? log in",
          ),
        ],
      ),
    );
  }
}

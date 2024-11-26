import 'package:template_mobile_apps/design_system/auth/moleculs/desc/desc_auth_moleculs.dart';
import 'package:template_mobile_apps/design_system/auth/moleculs/header/header_logo_auth_moleculs.dart';
import 'package:template_mobile_apps/design_system/auth/moleculs/title/title_auth_moleculs.dart';
import 'package:flutter/material.dart';

class HeaderAuthOrganism extends StatelessWidget {
  const HeaderAuthOrganism({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 59.0),
      child: Column(
        children: [
          HeaderLogoAuthMoleculs(),
          SizedBox(height: 60.0),
          TitleAuthMoleculs(
            titleText: "The Right Address For Your Perfect Outfits",
          ),
          SizedBox(height: 12.0),
          DescAuthMoleculs(
            descText:
                "Is it now very easy to find \nyour perfect outfit for any \nbody shape ",
          ),
        ],
      ),
    );
  }
}

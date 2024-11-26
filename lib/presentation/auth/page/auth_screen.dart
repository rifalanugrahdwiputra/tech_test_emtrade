import 'package:template_mobile_apps/design_system/auth/organism/background/background_auth_organism.dart';
import 'package:template_mobile_apps/design_system/auth/organism/button/button_auth_organism.dart';
import 'package:template_mobile_apps/design_system/auth/organism/header/header_auth_organism.dart';
import 'package:template_mobile_apps/presentation/navigation/fa_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundAuthOrganism(),
          Positioned(
            top: 100,
            bottom: 100,
            right: 0,
            left: 0,
            child: Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const HeaderAuthOrganism(),
                  const SizedBox(height: 127.0),
                  ButtonAuthOrganism(
                    callBackRegister: () {
                      context.pushNamed(FARoutes.nrAuthRegister);
                    },
                    callBackLogin: () {
                      context.pushNamed(FARoutes.nrAuthLogin);
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

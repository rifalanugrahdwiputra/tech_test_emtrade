import 'package:template_mobile_apps/design_system/onboarding/organism/background_onboarding_organism.dart';
import 'package:template_mobile_apps/design_system/onboarding/organism/body_onboarding_organism.dart';
import 'package:template_mobile_apps/presentation/navigation/fa_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundOnboardingOrganism(),
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
                  BodyOnboardingOrganism(
                    callBack: () {
                      context.pushReplacementNamed(FARoutes.nrAuth);
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

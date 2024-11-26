import 'package:template_mobile_apps/design_system/clasification/organism/card/card_do_clasification_organism.dart';
import 'package:template_mobile_apps/design_system/clasification/organism/card/card_dont_clasification_organism.dart';
import 'package:template_mobile_apps/design_system/clasification/organism/title/title_clasification_organism.dart';
import 'package:template_mobile_apps/design_system/onboarding/organism/background_onboarding_organism.dart';
import 'package:template_mobile_apps/presentation/navigation/fa_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ClasificationScreen extends StatelessWidget {
  const ClasificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundOnboardingOrganism(),
          Positioned(
            top: 60,
            bottom: 100,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TitleClasificationOrganism(
                      callback: () {},
                      title: "Terms and Condition",
                    ),
                    const SizedBox(height: 45.0),
                    const CardDoClasificationOrganism(),
                    const SizedBox(height: 45.0),
                    CardDontClasificationOrganism(
                      callback: () {
                        context.pushNamed(FARoutes.nrOnboardingClasification);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

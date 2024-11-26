import 'package:template_mobile_apps/design_system/onboarding/moleculs/button/button_onboarding_moleculs.dart';
import 'package:template_mobile_apps/design_system/onboarding/moleculs/header/header_logo_onboarding_moleculs.dart';
import 'package:flutter/material.dart';

class BodyOnboardingOrganism extends StatelessWidget {
  final VoidCallback callBack;
  const BodyOnboardingOrganism({
    super.key,
    required this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          children: [
            const HeaderLogoOnboardingMoleculs(),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70.0),
              child: ButtonOnboardingMoleculs(callBack: callBack),
            )
          ],
        ),
      ),
    );
  }
}

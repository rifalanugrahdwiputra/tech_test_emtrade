import 'package:template_mobile_apps/design_system/clasification/moleculs/button/button_take_picture_moleculs.dart';
import 'package:template_mobile_apps/design_system/clasification/moleculs/card/card_result_clasification_moleculs.dart';
import 'package:template_mobile_apps/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class BodyOnboardingClasificationOrganism extends StatelessWidget {
  final VoidCallback callback;
  const BodyOnboardingClasificationOrganism({
    super.key,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CardResultClasificationMoleculs(
          image: Assets.icons.icSelectImages.path,
        ),
        const SizedBox(height: 35.0),
        GestureDetector(
          onTap: callback,
          child: const ButtonTakePictureMoleculs(),
        ),
      ],
    );
  }
}

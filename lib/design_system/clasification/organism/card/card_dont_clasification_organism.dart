import 'package:template_mobile_apps/design_system/clasification/moleculs/card/card_desc_clasification_moleculs.dart';
import 'package:template_mobile_apps/design_system/clasification/moleculs/card/card_title_clasification_moleculs.dart';
import 'package:template_mobile_apps/design_system/clasification/organism/button/button_clasification_organism.dart';
import 'package:flutter/material.dart';

class CardDontClasificationOrganism extends StatelessWidget {
  final VoidCallback callback;
  const CardDontClasificationOrganism({
    super.key,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 120.0),
          child: CardTitleClasificationMoleculs(value: "DON’T"),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            children: [
              const SizedBox(height: 20.0),
              const CardDescClasificationMoleculs(
                value: "Low light room",
              ),
              const SizedBox(height: 20.0),
              const CardDescClasificationMoleculs(
                value: "There is more than 1 person in the frame",
              ),
              const SizedBox(height: 40.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: ButtonClasificationOrganism(callback: callback),
              ),
            ],
          ),
        )
      ],
    );
  }
}

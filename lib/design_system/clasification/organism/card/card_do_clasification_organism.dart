import 'package:template_mobile_apps/design_system/clasification/moleculs/card/card_desc_clasification_moleculs.dart';
import 'package:template_mobile_apps/design_system/clasification/moleculs/card/card_title_clasification_moleculs.dart';
import 'package:flutter/material.dart';

class CardDoClasificationOrganism extends StatelessWidget {
  const CardDoClasificationOrganism({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 130.0),
          child: CardTitleClasificationMoleculs(value: "DO"),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            children: [
              SizedBox(height: 20.0),
              CardDescClasificationMoleculs(
                value:
                    "Wearing short pants and tanktop or sport wear (sleeveles)",
              ),
              SizedBox(height: 20.0),
              CardDescClasificationMoleculs(
                value:
                    "position the camera parallel to your stomach and take 7 steps back",
              ),
              SizedBox(height: 20.0),
              CardDescClasificationMoleculs(
                value: "If your have long hair tie with high hair bun",
              ),
            ],
          ),
        ),
      ],
    );
  }
}

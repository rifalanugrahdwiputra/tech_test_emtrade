import 'package:template_mobile_apps/design_system/clasification/moleculs/card/card_button_result_clasification_moleculs.dart';
import 'package:template_mobile_apps/design_system/clasification/moleculs/card/card_desc_result_clasification_moleculs.dart';
import 'package:template_mobile_apps/design_system/clasification/moleculs/card/card_title_result_clasification_moleculs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardBodyResultClasificationOrganism extends StatelessWidget {
  final VoidCallback callback;
  final String classified;
  final String percentage;
  const CardBodyResultClasificationOrganism({
    super.key,
    required this.callback,
    required this.classified,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70.0),
          child: Column(
            children: [
              const CardTitleResultClasificationMoleculs(
                  value: "Classified as :"),
              const SizedBox(height: 10.0),
              CardDescResultClasificationMoleculs(value: classified),
              const SizedBox(height: 25.0),
              const CardTitleResultClasificationMoleculs(
                  value: "Classified as :"),
              const SizedBox(height: 10.0),
              CardDescResultClasificationMoleculs(
                value: classified,
                percentage: percentage,
              ),
            ],
          ),
        ),
        const SizedBox(height: 55.0),
        GestureDetector(
          onTap: callback,
          child: const CardButtonResultClasificationMoleculs(
            value: "Show more about body type shaped",
          ),
        ),
      ],
    );
  }
}

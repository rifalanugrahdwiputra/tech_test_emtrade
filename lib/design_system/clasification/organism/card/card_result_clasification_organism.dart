import 'package:template_mobile_apps/design_system/clasification/moleculs/card/card_clasification_moleculs.dart';
import 'package:flutter/material.dart';

class CardResultClasificationOrganism extends StatelessWidget {
  final String image;
  const CardResultClasificationOrganism({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return CardClasificationMoleculs(
      image: image,
    );
  }
}

import 'package:template_mobile_apps/design_system/clasification/moleculs/button/button_clasification_moleculs.dart';
import 'package:flutter/material.dart';

class ButtonClasificationOrganism extends StatelessWidget {
  final VoidCallback callback;
  const ButtonClasificationOrganism({super.key, required this.callback});

  @override
  Widget build(BuildContext context) {
    return ButtonClasificationMoleculs(
      onPressed: callback,
    );
  }
}

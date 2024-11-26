import 'package:template_mobile_apps/design_system/clasification/moleculs/title/title_clasification_moleculs.dart';
import 'package:template_mobile_apps/design_system/clasification/moleculs/title/title_close_button_clasification_moleculs.dart';
import 'package:flutter/material.dart';

class TitleClasificationOrganism extends StatelessWidget {
  final VoidCallback callback;
  final String title;
  const TitleClasificationOrganism({
    super.key,
    required this.callback,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: callback,
          child: const TitleCloseButtonClasificationMoleculs(),
        ),
        const SizedBox(width: 10.0),
        TitleClasificationMoleculs(
          title: title,
        ),
      ],
    );
  }
}

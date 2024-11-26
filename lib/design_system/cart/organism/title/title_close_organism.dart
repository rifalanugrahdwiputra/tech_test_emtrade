import 'package:template_mobile_apps/design_system/clasification/moleculs/title/title_close_button_clasification_moleculs.dart';
import 'package:flutter/material.dart';

class TitleCloseOrganism extends StatelessWidget {
  final VoidCallback callback;
  const TitleCloseOrganism({
    super.key,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: callback,
          child: const TitleCloseButtonClasificationMoleculs(),
        ),
      ],
    );
  }
}

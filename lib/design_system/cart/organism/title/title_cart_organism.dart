import 'package:template_mobile_apps/design_system/clasification/moleculs/title/title_clasification_moleculs.dart';
import 'package:template_mobile_apps/design_system/clasification/moleculs/title/title_close_button_clasification_moleculs.dart';
import 'package:flutter/material.dart';

class TitleCartOrganism extends StatelessWidget {
  final VoidCallback callback;
  final String title;
  const TitleCartOrganism({
    super.key,
    required this.callback,
    required this.title,
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
        const SizedBox(height: 20.0),
        TitleClasificationMoleculs(
          title: title,
        ),
      ],
    );
  }
}

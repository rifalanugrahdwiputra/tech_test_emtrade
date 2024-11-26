import 'package:template_mobile_apps/design_system/clasification/moleculs/card/card_header_result_detail_clasification_moleculs.dart';
import 'package:template_mobile_apps/design_system/clasification/moleculs/desc/desc_result_detail_clasification_moelculs.dart';
import 'package:flutter/material.dart';

class HeaderResultDetailOrganism extends StatelessWidget {
  const HeaderResultDetailOrganism({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DescResultDetailClasificationMoelculs(
          value: 'why is it important to know your body type?',
        ),
        SizedBox(height: 16.0),
        CardHeaderResultDetailClasificationMoleculs()
      ],
    );
  }
}

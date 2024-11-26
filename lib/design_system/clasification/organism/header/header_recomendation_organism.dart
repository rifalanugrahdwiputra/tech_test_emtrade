import 'package:template_mobile_apps/design_system/clasification/moleculs/desc/desc_result_detail_clasification_moelculs.dart';
import 'package:flutter/material.dart';

class HeaderRecomendationOrganism extends StatelessWidget {
  const HeaderRecomendationOrganism({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DescResultDetailClasificationMoelculs(
          value: 'Here’s The Recommendations For You',
        ),
      ],
    );
  }
}

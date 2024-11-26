import 'package:template_mobile_apps/design_system/cart/moleculs/desc/desc_success_information_moelculs.dart';
import 'package:template_mobile_apps/design_system/cart/moleculs/desc/desc_success_moelculs.dart';
import 'package:template_mobile_apps/design_system/cart/moleculs/header/header_success_moelculs.dart';
import 'package:template_mobile_apps/design_system/cart/moleculs/title/title_success_moleculs.dart';
import 'package:flutter/material.dart';

class BodySuccessPaymentOrganism extends StatelessWidget {
  const BodySuccessPaymentOrganism({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HeaderSuccessMoelculs(),
        SizedBox(height: 5.0),
        TitleSuccessMoleculs(),
        SizedBox(height: 5.0),
        DescSuccessMoelculs(),
        SizedBox(height: 10.0),
        DescSuccessInformationMoelculs(),
      ],
    );
  }
}

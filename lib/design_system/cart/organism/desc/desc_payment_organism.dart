import 'package:template_mobile_apps/design_system/cart/moleculs/desc/desc_detail_payment_moleculs.dart';
import 'package:flutter/material.dart';

class DescPaymentOrganism extends StatelessWidget {
  final String countPrice;
  const DescPaymentOrganism({
    super.key,
    required this.countPrice,
  });

  @override
  Widget build(BuildContext context) {
    return DescDetailPaymentMoleculs(
      countPrice: countPrice,
    );
  }
}

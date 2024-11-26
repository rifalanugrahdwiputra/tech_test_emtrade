import 'package:template_mobile_apps/design_system/product/moleculs/detail/button/button_detail_product_moleculs.dart';
import 'package:flutter/material.dart';

class ButtonDetailOrganism extends StatelessWidget {
  final VoidCallback onPressed;
  const ButtonDetailOrganism({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonDetailProductMoleculs(
      onPressed: onPressed,
    );
  }
}

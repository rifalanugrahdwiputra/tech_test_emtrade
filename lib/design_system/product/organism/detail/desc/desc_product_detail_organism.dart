import 'package:template_mobile_apps/design_system/product/moleculs/detail/desc/desc_product_detail_moleculs.dart';
import 'package:flutter/material.dart';

class DescProductDetailOrganism extends StatelessWidget {
  final String desc;
  const DescProductDetailOrganism({
    super.key,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return DescProductDetailMoleculs(desc: desc);
  }
}

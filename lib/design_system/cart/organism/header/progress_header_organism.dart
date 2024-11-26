import 'package:template_mobile_apps/design_system/cart/moleculs/card/card_progress_cart_moleculs.dart';
import 'package:template_mobile_apps/design_system/cart/moleculs/title/title_progress_moleculs.dart';
import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:flutter/material.dart';

class ProgressHeaderOrganism extends StatelessWidget {
  const ProgressHeaderOrganism({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            CardProgressCartMoleculs(isActive: true),
            SizedBox(height: 10.0),
            TitleProgressMoleculs(title: "Order Placed"),
          ],
        ),
        Divider(
          height: 2,
          color: AppColors.darkPrimary,
        ),
        Column(
          children: [
            CardProgressCartMoleculs(
              isActive: true,
              number: "2",
            ),
            SizedBox(height: 10.0),
            TitleProgressMoleculs(title: "Confirm"),
          ],
        ),
        Divider(
          height: 2,
          color: AppColors.darkPrimary,
        ),
        Column(
          children: [
            CardProgressCartMoleculs(
              isActive: false,
              number: "3",
            ),
            SizedBox(height: 10.0),
            TitleProgressMoleculs(title: "Shipped"),
          ],
        ),
        Divider(
          height: 2,
          color: AppColors.darkPrimary,
        ),
        Column(
          children: [
            CardProgressCartMoleculs(
              isActive: false,
              number: "4",
            ),
            SizedBox(height: 10.0),
            TitleProgressMoleculs(title: "Delivered"),
          ],
        ),
      ],
    );
  }
}

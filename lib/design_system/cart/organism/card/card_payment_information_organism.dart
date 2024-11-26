import 'package:template_mobile_apps/design_system/cart/moleculs/title/title_information_payment_moleculs.dart';
import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:flutter/material.dart';

class CardPaymentInformationOrganism extends StatelessWidget {
  const CardPaymentInformationOrganism({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.25),
            offset: const Offset(0, 4),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      ),
      child: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          children: [
            Expanded(
              child: TitleInformationPaymentMoleculs(
                title:
                    'Currently fayra only supports payment when \nreceiving the product, more option are coming \nsoon.',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

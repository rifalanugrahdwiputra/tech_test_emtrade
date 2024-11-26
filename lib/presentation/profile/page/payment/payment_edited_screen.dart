import 'package:template_mobile_apps/design_system/cart/organism/title/title_cart_organism.dart';
import 'package:template_mobile_apps/design_system/cart/organism/card/card_payment_information_organism.dart';
import 'package:template_mobile_apps/design_system/cart/organism/title/title_payment_address_organism.dart';
import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PaymentEditedScreen extends StatelessWidget {
  const PaymentEditedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleCartOrganism(
                  callback: () {
                    context.pop();
                  },
                  title: "Payment Methods",
                ),
                const SizedBox(height: 15.0),
                const CardPaymentInformationOrganism(),
                const SizedBox(height: 20.0),
                const Divider(
                  color: AppColors.grey,
                  height: 1.0,
                ),
                const SizedBox(height: 20.0),
                const TitlePaymentAddressOrganism(),
                const SizedBox(height: 20.0),
                const Divider(
                  color: AppColors.grey,
                  height: 1.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:template_mobile_apps/design_system/cart/organism/body/body_success_payment_organism.dart';
import 'package:template_mobile_apps/design_system/cart/organism/bottom/bottom_button_payment_success_organism.dart';
import 'package:template_mobile_apps/design_system/cart/organism/title/title_close_organism.dart';
import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../navigation/fa_routes.dart';

class SuccessPaymentScreen extends StatelessWidget {
  const SuccessPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                Row(
                  children: [
                    TitleCloseOrganism(
                      callback: () {
                        context.pop();
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 25.0),
                const BodySuccessPaymentOrganism(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(30.0),
        child: BottomButtonPaymentSuccessOrganism(
          callback: () {
            context.pushReplacementNamed(FARoutes.nrCartPaymentDetail);
          },
        ),
      ),
    );
  }
}

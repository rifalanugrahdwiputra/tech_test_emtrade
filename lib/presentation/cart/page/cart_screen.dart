import 'package:template_mobile_apps/design_system/cart/organism/bottom/bottom_summary_button_cart_organism.dart';
import 'package:template_mobile_apps/design_system/cart/organism/card/card_cart_organism.dart';
import 'package:template_mobile_apps/design_system/clasification/organism/title/title_clasification_organism.dart';
import 'package:template_mobile_apps/design_system/onboarding/organism/background_onboarding_organism.dart';
import 'package:template_mobile_apps/gen/assets.gen.dart';
import 'package:template_mobile_apps/presentation/navigation/fa_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundOnboardingOrganism(),
          Positioned(
            top: 60,
            bottom: 60,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TitleClasificationOrganism(
                      callback: () {},
                      title: "My Cart",
                    ),
                    const SizedBox(height: 25.0),
                    CardCartOrganism(
                      image: Assets.images.imgBlouseSample.path,
                      titleProduct: "Blouse 1",
                      price: "Rp.300K",
                      countCart: "1",
                      isButton: true,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: BottomSummaryButtonCartOrganism(
                countPrice: "Rp.300K",
                callback: () {
                  context.pushNamed(FARoutes.nrCartPayment);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:template_mobile_apps/design_system/clasification/organism/title/title_clasification_organism.dart';
import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/profile/organism/orders/body_orders_organism.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

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
                TitleClasificationOrganism(
                  callback: () {
                    context.pop();
                  },
                  title: "All Orders",
                ),
                const SizedBox(height: 25.0),
                const BodyOrdersOrganism(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

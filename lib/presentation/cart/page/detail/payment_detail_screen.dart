import 'package:template_mobile_apps/design_system/cart/moleculs/title/title_address_moleculs.dart';
import 'package:template_mobile_apps/design_system/cart/moleculs/title/title_product_moleculs.dart';
import 'package:template_mobile_apps/design_system/cart/organism/bottom/bottom_summary_cart_organism.dart';
import 'package:template_mobile_apps/design_system/cart/organism/card/card_cart_organism.dart';
import 'package:template_mobile_apps/design_system/cart/organism/header/progress_header_organism.dart';
import 'package:template_mobile_apps/design_system/clasification/organism/title/title_clasification_organism.dart';
import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/gen/assets.gen.dart';
import 'package:template_mobile_apps/presentation/navigation/fa_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PaymentDetailScreen extends StatelessWidget {
  const PaymentDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                TitleClasificationOrganism(
                  callback: () {
                    context.pushReplacementNamed(FARoutes.nrMain);
                  },
                  title: "Order #6424812",
                ),
                const SizedBox(height: 25.0),
                const ProgressHeaderOrganism(),
                const SizedBox(height: 30.0),
                const TitleAddressMoleculs(
                  address: "Justin Timberlake\nstreet. tgb8,bxer\n585554855",
                ),
                const SizedBox(height: 20.0),
                const Divider(
                  color: AppColors.grey,
                  height: 1,
                ),
                const SizedBox(height: 25.0),
                const TitleProductMoleculs(),
                const SizedBox(height: 15.0),
                CardCartOrganism(
                  image: Assets.images.imgBlouseSample.path,
                  titleProduct: "Blouse 1",
                  price: "Rp.300K",
                  isDetail: true,
                  countCart: "1",
                ),
                const SizedBox(height: 150.0),
                const BottomSummaryCartOrganism(
                  countPrice: "Rp.300K",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

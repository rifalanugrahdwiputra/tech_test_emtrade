import 'package:template_mobile_apps/design_system/clasification/organism/title/title_clasification_organism.dart';
import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/profile/organism/body_profile_main_organism.dart';
import 'package:template_mobile_apps/presentation/navigation/fa_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TitleClasificationOrganism(
                  callback: () {},
                  title: "Settings",
                ),
              ),
              const SizedBox(height: 30.0),
              BodyProfileMainOrganism(
                callbackProfile: () {
                  context.pushNamed(FARoutes.nrEditedProfile);
                },
                callbackOrders: () {
                  context.pushNamed(FARoutes.nrOrders);
                },
                callbackTrack: () {},
                callbackBilling: () {
                  context.pushNamed(FARoutes.nrEditedPayemnt);
                },
                callbackNotification: () {},
                callbackLanguage: () {},
                callbackLogout: () {
                  context.pushNamed(FARoutes.nrAuth);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

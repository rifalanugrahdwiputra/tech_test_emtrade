import 'package:template_mobile_apps/design_system/profile/moleculs/desc/desc_main_moleculs.dart';
import 'package:template_mobile_apps/design_system/profile/moleculs/iconbutton/button_icon_main_moleculs.dart';
import 'package:template_mobile_apps/design_system/profile/moleculs/title/title_image_main_moleculs.dart';
import 'package:template_mobile_apps/design_system/profile/moleculs/title/title_main_moleculs.dart';
import 'package:template_mobile_apps/design_system/profile/moleculs/title/title_menus_moleculs.dart';
import 'package:template_mobile_apps/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class BodyProfileMainOrganism extends StatelessWidget {
  final VoidCallback callbackProfile;
  final VoidCallback callbackOrders;
  final VoidCallback callbackTrack;
  final VoidCallback callbackBilling;
  final VoidCallback callbackNotification;
  final VoidCallback callbackLanguage;
  final VoidCallback callbackLogout;
  const BodyProfileMainOrganism({
    super.key,
    required this.callbackProfile,
    required this.callbackOrders,
    required this.callbackTrack,
    required this.callbackBilling,
    required this.callbackNotification,
    required this.callbackLanguage,
    required this.callbackLogout,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: GestureDetector(
            onTap: callbackProfile,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    TitleImageMainMoleculs(
                      imagePath: Assets.icons.icProfile,
                    ),
                    const SizedBox(width: 15.0),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TitleMainMoleculs(mainTitle: "Justin Timberlake"),
                        DescMainMoleculs(descMain: "Edit personal detail"),
                      ],
                    ),
                  ],
                ),
                ButtonIconMainMoleculs(callback: () {}),
              ],
            ),
          ),
        ),
        const SizedBox(height: 30.0),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TitleMenusMoleculs(titleMenus: "Orders"),
        ),
        const SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: GestureDetector(
            onTap: callbackOrders,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    TitleImageMainMoleculs(
                      imagePath: Assets.icons.icCartProfile,
                      height: 43,
                    ),
                    const SizedBox(width: 15.0),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TitleMainMoleculs(mainTitle: "All Orders"),
                      ],
                    ),
                  ],
                ),
                ButtonIconMainMoleculs(callback: () {}),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
          ),
          child: GestureDetector(
            onTap: callbackTrack,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    TitleImageMainMoleculs(
                      imagePath: Assets.icons.icTrackOrder,
                      height: 44,
                    ),
                    const SizedBox(width: 13.0),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TitleMainMoleculs(mainTitle: "Track Orders"),
                      ],
                    ),
                  ],
                ),
                ButtonIconMainMoleculs(callback: () {}),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.only(
            left: 18.0,
            right: 20.0,
          ),
          child: GestureDetector(
            onTap: callbackBilling,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    TitleImageMainMoleculs(
                      imagePath: Assets.icons.icBilling,
                      height: 50,
                    ),
                    const SizedBox(width: 11.0),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TitleMainMoleculs(mainTitle: "Billing and Addression"),
                      ],
                    ),
                  ],
                ),
                ButtonIconMainMoleculs(callback: () {}),
              ],
            ),
          ),
        ),
        const SizedBox(height: 30.0),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TitleMenusMoleculs(titleMenus: "Notifications"),
        ),
        const SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: GestureDetector(
            onTap: callbackNotification,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    TitleImageMainMoleculs(
                      imagePath: Assets.icons.icNotification,
                      height: 50,
                    ),
                    const SizedBox(width: 15.0),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TitleMainMoleculs(mainTitle: "Notifications"),
                      ],
                    ),
                  ],
                ),
                ButtonIconMainMoleculs(callback: () {}),
              ],
            ),
          ),
        ),
        const SizedBox(height: 30.0),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TitleMenusMoleculs(titleMenus: "Regional"),
        ),
        const SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: GestureDetector(
            onTap: callbackLanguage,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    TitleImageMainMoleculs(
                      imagePath: Assets.icons.icLanguage,
                      height: 50,
                    ),
                    const SizedBox(width: 15.0),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TitleMainMoleculs(mainTitle: "Language"),
                      ],
                    ),
                  ],
                ),
                ButtonIconMainMoleculs(callback: () {}),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: GestureDetector(
            onTap: callbackLogout,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    TitleImageMainMoleculs(
                      imagePath: Assets.icons.icLogout,
                      height: 50,
                    ),
                    const SizedBox(width: 15.0),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TitleMainMoleculs(mainTitle: "Logout"),
                      ],
                    ),
                  ],
                ),
                ButtonIconMainMoleculs(callback: () {}),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:template_mobile_apps/design_system/clasification/organism/title/title_clasification_organism.dart';
import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/profile/organism/bottom/bottom_button_profile_organism.dart';
import 'package:template_mobile_apps/design_system/profile/organism/edited/body_form_edited_organism.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EditedProfileScreen extends StatelessWidget {
  const EditedProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textControllerFirstName = TextEditingController();
    TextEditingController textControllerLastName = TextEditingController();
    TextEditingController textControllerEmail = TextEditingController();
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
                  title: "Edit Profile",
                ),
                const SizedBox(height: 25.0),
                BodyFormEditedOrganism(
                  onChangedFirstName: (value) {},
                  textControllerFirstName: textControllerFirstName,
                  onChangedLastName: (value) {},
                  textControllerLastName: textControllerLastName,
                  onChangedEmail: (value) {},
                  textControllerEmail: textControllerEmail,
                  callBackForgotPassword: () {},
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 30.0,
        ),
        child: BottomButtonProfileOrganism(
          callback: () {
            context.pop();
          },
        ),
      ),
    );
  }
}

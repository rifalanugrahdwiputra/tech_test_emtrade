import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/button/button.dart';
import 'package:template_mobile_apps/design_system/commons/widget/text/text.dart';

class JailbreakWidget extends StatelessWidget {
  const JailbreakWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const FAText.headlineSmallBold(
                text: "Jaibreak Detected",
                textColor: AppColors.primary,
              ),
              const SizedBox(height: 10),
              const FAText.bodyMediumBold(
                text: "Jandole is not supported on jaibroken devices",
                textColor: AppColors.primary,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: FAButton.filled(
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                  height: 40,
                  text: "Exit App",
                  textColor: AppColors.neutralWhite,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:emtrade_tech_test/design_system/commons/colors/colors.dart';
import 'package:emtrade_tech_test/design_system/commons/widget/text/text.dart';

class ContentErrorMoleculs extends StatelessWidget {
  final String errorImage;
  final String errorMessage;
  final String errorDescription;
  const ContentErrorMoleculs({
    super.key,
    required this.errorImage,
    required this.errorMessage,
    required this.errorDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          errorImage,
          width: 200,
          height: 200,
        ),
        const SizedBox(height: 23),
        BAText.headlineSmallBold(
          text: errorMessage,
          textColor: AppColors.primary,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        BAText.bodyMediumRegular(
          text: errorDescription,
          textColor: AppColors.blackLoader,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}

// ignore_for_file: deprecated_member_use

import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/text/text.dart';
import 'package:template_mobile_apps/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TitlePaymentAddressMoleculs extends StatelessWidget {
  const TitlePaymentAddressMoleculs({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset(
              Assets.icons.icLocation,
              height: 20.0,
              color: AppColors.darkPrimary,
            ),
            const SizedBox(width: 5.0),
            const FAText.titleMediumSemiBold(
              text: "Shipping",
              textColor: AppColors.darkPrimary,
            ),
          ],
        ),
        SvgPicture.asset(
          Assets.icons.icPlusAdd,
          color: AppColors.darkPrimary,
          height: 22.0,
        ),
      ],
    );
  }
}

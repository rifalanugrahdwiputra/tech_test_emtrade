// ignore_for_file: deprecated_member_use

import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/text/text.dart';
import 'package:template_mobile_apps/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TitleAddressMoleculs extends StatelessWidget {
  final String address;
  const TitleAddressMoleculs({super.key, required this.address});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
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
              text: "Address",
              textColor: AppColors.darkPrimary,
            ),
          ],
        ),
        const SizedBox(height: 5.0),
        FAText.bodyMediumBold(
          text: address,
          textColor: AppColors.darkPrimary.withOpacity(0.60),
        ),
      ],
    );
  }
}

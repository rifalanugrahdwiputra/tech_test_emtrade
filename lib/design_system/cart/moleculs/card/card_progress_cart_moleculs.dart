import 'package:template_mobile_apps/common/extensions/on_string_extension.dart';
import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/text/text.dart';
import 'package:template_mobile_apps/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardProgressCartMoleculs extends StatelessWidget {
  final bool isActive;
  final String? number;
  const CardProgressCartMoleculs({
    super.key,
    required this.isActive,
    this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.0,
      width: 30.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isActive ? AppColors.primary : AppColors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(100),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: number.isNotEmptyOrNull
            ? FAText.bodySmallRegular(
                text: number!,
                textColor: AppColors.darkPrimary,
              )
            : SvgPicture.asset(
                Assets.icons.icCheck,
                color: AppColors.darkPrimary,
                height: 20.0,
              ),
      ),
    );
  }
}

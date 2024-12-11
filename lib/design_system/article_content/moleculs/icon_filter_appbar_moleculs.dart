import 'package:emtrade_tech_test/design_system/commons/colors/colors.dart';
import 'package:emtrade_tech_test/design_system/commons/widget/text/text.dart';
import 'package:emtrade_tech_test/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconFilterAppbarMoleculs extends StatelessWidget {
  final VoidCallback onClickFilter;
  const IconFilterAppbarMoleculs({super.key, required this.onClickFilter });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onClickFilter(),
      child: Row(
        children: [
          SvgPicture.asset(Assets.icons.icFilter, height: 20.0, width: 20.0, color: AppColors.thirdGreen,),
          const SizedBox(width: 4.0),
          const BAText.titleMediumRegular(text: "Filter", textColor: AppColors.thirdGreen,),
        ],
      ),
    );
  }
}
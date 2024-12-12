import 'package:emtrade_tech_test/design_system/commons/colors/colors.dart';
import 'package:emtrade_tech_test/design_system/commons/widget/text/text.dart';
import 'package:emtrade_tech_test/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconFilterAppbarMoleculs extends StatelessWidget {
  final VoidCallback onClickFilter;
  final bool isUsedFilter;

  const IconFilterAppbarMoleculs({
    super.key,
    required this.onClickFilter,
    required this.isUsedFilter,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onClickFilter(),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        decoration: isUsedFilter
            ? BoxDecoration(
                color: const Color(0xFFE6F7F7),
                borderRadius: const BorderRadius.all(Radius.circular(100.0)),
                border: Border.all(
                  color: const Color(0xFF04A9AC),
                  width: 1.0,
                ),
              )
            : null,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              isUsedFilter? Assets.icons.icUsedFilter : Assets.icons.icFilter,
              height:isUsedFilter? 20.0 : 20.0,
              width: isUsedFilter? 20.0 : 20.0,
              color: AppColors.thirdGreen,
            ),
            const SizedBox(width: 4.0),
            const BAText.titleMediumRegular(
              text: "Filter",
              textColor: AppColors.thirdGreen,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:emtrade_tech_test/common/extensions/on_string_extension.dart';
import 'package:emtrade_tech_test/design_system/commons/colors/colors.dart';
import 'package:emtrade_tech_test/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class TitleCardInformationMoleculs extends StatelessWidget {
  final String contentFormat;
  final String category;
  const TitleCardInformationMoleculs({super.key, required this.contentFormat, required this.category});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BAText.bodySmallRegular(text: contentFormat.toCapitalized(), textColor: AppColors.neutralCaption),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            width: 4.0,
            height: 4.0,
            decoration: const BoxDecoration(
              color: AppColors.neutralLabel,
            ),
          ),
        ),
        Expanded(
          child: BAText.bodySmallRegular(text: category.toCapitalized(), textColor: AppColors.neutralCaption, maxLines: 1, textOverflow: TextOverflow.ellipsis,),
        ),
      ],
    );
  }
}
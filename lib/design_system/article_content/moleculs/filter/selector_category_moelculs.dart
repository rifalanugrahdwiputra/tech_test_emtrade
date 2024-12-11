import 'package:emtrade_tech_test/design_system/commons/colors/colors.dart';
import 'package:emtrade_tech_test/design_system/commons/widget/text/text.dart';
import 'package:flutter/material.dart';

class SelectorCategoryMolecules extends StatelessWidget {
  final String categoryName;
  const SelectorCategoryMolecules({super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          decoration: BoxDecoration(
            color: Colors.transparent.withOpacity(0),
            borderRadius: const BorderRadius.all(Radius.circular(100.0)),
            border: Border.all(
              color: AppColors.neutralButtonBorder,
              width: 1.0,
            ),
          ),
          child: Center(
            child: BAText.titleMediumRegular(
              text: categoryName,
              textColor: AppColors.neutralTitle,
            ),
          ),
        ),
      ],
    );
  }
}

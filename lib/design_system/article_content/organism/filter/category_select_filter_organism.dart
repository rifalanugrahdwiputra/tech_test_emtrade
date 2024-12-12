import 'package:emtrade_tech_test/design_system/article_content/moleculs/filter/button/cancel_button_filter_moleculs.dart';
import 'package:emtrade_tech_test/design_system/article_content/moleculs/filter/button/save_button_filter_moleculs.dart';
import 'package:emtrade_tech_test/design_system/article_content/moleculs/filter/reset_button_text_filter_moleculs.dart';
import 'package:emtrade_tech_test/design_system/article_content/moleculs/filter/selector_category_moelculs.dart';
import 'package:emtrade_tech_test/design_system/article_content/moleculs/filter/title_category_moleculs.dart';
import 'package:emtrade_tech_test/design_system/article_content/moleculs/filter/title_filter_moleculs.dart';
import 'package:emtrade_tech_test/design_system/commons/colors/colors.dart';
import 'package:emtrade_tech_test/domain/article_content/data/categories_data.dart';
import 'package:flutter/material.dart';

class CategorySelectFilterOrganism extends StatelessWidget {
  final VoidCallback onClickReset;
  final VoidCallback cancelOnPressed;
  final VoidCallback saveOnPressed;
  final List<CategoriesData> listCategories;
  final List<CategoriesData> selectedCategories;
  final Function(CategoriesData) onSelectedCategories;
  const CategorySelectFilterOrganism({super.key, required this.onClickReset, required this.cancelOnPressed, required this.saveOnPressed, required this.listCategories, required this.selectedCategories, required this.onSelectedCategories,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TitleFilterMoleculs(),
              GestureDetector(
                onTap: onClickReset,
                child: const ResetButtonTextFilterMoleculs(),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          const Divider(
            height: 1.0,
            thickness: 1.0,
            color: AppColors.neutralButtonBorder,
            indent: 0.0,
            endIndent: 0.0,
          ),
          const SizedBox(height: 16.0),
          const TitleCategoryMoleculs(),
          const SizedBox(height: 8.0),
          Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: listCategories
              .map((category) {
                final isSelected = selectedCategories.contains(category);
                return SelectorCategoryMolecules(
                  categoryName: category.name,
                  isSelected: isSelected,
                  onTap: () {
                    onSelectedCategories(category);
                  },
                );
              })
              .toList(),
          ),
          const SizedBox(height: 16.0),
          const Divider(
            height: 1.0,
            thickness: 1.0,
            color: AppColors.neutralButtonBorder,
            indent: 0.0,
            endIndent: 0.0,
          ),
          const SizedBox(height: 16.0),
          Row(
            children: [
              Expanded(
                child: CancelButtonFilterMoleculs(cancelOnPressed: cancelOnPressed),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: SaveButtonFilterMoleculs(
                  saveOnPressed: () {
                    saveOnPressed();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
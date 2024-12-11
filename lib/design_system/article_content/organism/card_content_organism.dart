import 'package:emtrade_tech_test/design_system/article_content/moleculs/card/card_image_moleculs.dart';
import 'package:emtrade_tech_test/design_system/article_content/moleculs/card/content_card_information_moleculs.dart';
import 'package:emtrade_tech_test/design_system/article_content/moleculs/card/date_card_information_moleculs.dart';
import 'package:emtrade_tech_test/design_system/article_content/moleculs/card/title_card_information_moleculs.dart';
import 'package:emtrade_tech_test/design_system/commons/colors/colors.dart';
import 'package:flutter/material.dart';

class CardContentOrganism extends StatelessWidget {
  final String contentFormat;
  final String category;
  final String shortContent;
  final String date;
  final String imageUrl;
  const CardContentOrganism({super.key, required this.contentFormat, required this.category, required this.shortContent, required this.date, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        border: Border.all(
          color: AppColors.neutralButtonBorder,
          width: 1,
        ),
      ),
      child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleCardInformationMoleculs(contentFormat: contentFormat, category: category),
                  const SizedBox(height: 4.0),
                  ContentCardInformationMoleculs(shortContent: shortContent),
                  const SizedBox(height: 4.0),
                  DateCardInformationMoleculs(date: date)
                ],
              ),
            ),
            const SizedBox(width: 8.0),
            CardImageMoleculs(imageUrl: imageUrl, isVideo: contentFormat == 'video')
          ],
        ),
    );
  }
}

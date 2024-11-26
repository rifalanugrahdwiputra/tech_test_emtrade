import 'package:template_mobile_apps/design_system/auth/organism/background/background_auth_organism.dart';
import 'package:template_mobile_apps/design_system/clasification/organism/card/card_body_result_clasification_organism.dart';
import 'package:template_mobile_apps/design_system/clasification/organism/card/card_result_clasification_organism.dart';
import 'package:template_mobile_apps/design_system/clasification/organism/title/title_clasification_organism.dart';
import 'package:template_mobile_apps/domain/classification/data/classfication_image_data.dart';
import 'package:template_mobile_apps/presentation/navigation/fa_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResultClasificationScreen extends StatelessWidget {
  final String image;
  final String classified;
  final String percentage;
  final List<DetailedResultDomain> detailedResults;
  const ResultClasificationScreen({
    super.key,
    required this.image,
    required this.classified,
    required this.percentage,
    required this.detailedResults,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundAuthOrganism(),
          Positioned(
            top: 50,
            bottom: 0,
            right: 0,
            left: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TitleClasificationOrganism(
                      callback: () {
                        context.pop();
                      },
                      title: "Image classified",
                    ),
                    const SizedBox(height: 17.0),
                    CardResultClasificationOrganism(image: image),
                    const SizedBox(height: 38.0),
                    CardBodyResultClasificationOrganism(
                      callback: () {
                        context.pushNamed(
                          FARoutes.nrResultClasificationDetail,
                          queryParameters: {
                            'category': classified,
                          },
                        );
                      },
                      classified: classified,
                      percentage: percentage,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

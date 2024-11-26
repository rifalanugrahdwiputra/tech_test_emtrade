// ignore_for_file: must_be_immutable

import 'package:template_mobile_apps/design_system/clasification/organism/body/body_result_detail_clasification_organism.dart';
import 'package:template_mobile_apps/design_system/clasification/organism/header/header_result_detail_organism.dart';
import 'package:template_mobile_apps/design_system/clasification/organism/title/title_clasification_organism.dart';
import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/presentation/navigation/fa_routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResultDetailClasificationScreen extends StatelessWidget {
  String? category;
  ResultDetailClasificationScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
            vertical: 20.0,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TitleClasificationOrganism(
                  callback: () {
                    context.pop();
                  },
                  title: "Body Type Shape",
                ),
                const SizedBox(height: 17.0),
                const HeaderResultDetailOrganism(),
                const SizedBox(height: 20.0),
                BodyResultDetailClasificationOrganism(
                  callback: () {
                    context.pushNamed(
                      FARoutes.nrRecomendationProductClasification,
                      queryParameters: {
                        'category': category,
                      },
                    );
                  },
                  category: category ?? "",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

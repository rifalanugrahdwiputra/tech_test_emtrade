import 'package:template_mobile_apps/design_system/clasification/moleculs/card/card_button_recomendation_clasification_moleculs.dart';
import 'package:template_mobile_apps/design_system/clasification/moleculs/card/card_image_desc_detail_clasification_moleculs.dart';
import 'package:template_mobile_apps/design_system/clasification/moleculs/card/card_title_result_clasification_moleculs.dart';
import 'package:template_mobile_apps/design_system/clasification/moleculs/title/title_best_suits_moleculs.dart';
import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class BodyResultDetailClasificationOrganism extends StatelessWidget {
  final VoidCallback callback;
  final String category;
  const BodyResultDetailClasificationOrganism({
    super.key,
    required this.callback,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleBestSuitsMoleculs(),
        const SizedBox(height: 15.0),
        category == "triangle"
            ? Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(
                    color: AppColors.darkPrimary,
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CardImageDescDetailClasificationMoleculs(
                        image: Assets.images.imgInvertedTriangle.path,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 20.0,
                            right: 10.0,
                          ),
                          child: Column(
                            children: [
                              const CardTitleResultClasificationMoleculs(
                                value: "Triangle",
                              ),
                              const SizedBox(height: 12.0),
                              GestureDetector(
                                onTap: callback,
                                child:
                                    const CardButtonRecomendationClasificationMoleculs(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : Container(),
        category == "triangle" ? const SizedBox(height: 30.0) : Container(),
        category == "Pear shape"
            ? Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(
                    color: AppColors.darkPrimary,
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CardImageDescDetailClasificationMoleculs(
                        image: Assets.images.imgRectangle.path,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 20.0,
                            right: 10.0,
                          ),
                          child: Column(
                            children: [
                              const CardTitleResultClasificationMoleculs(
                                value: "Pear Shape",
                              ),
                              const SizedBox(height: 12.0),
                              GestureDetector(
                                onTap: callback,
                                child:
                                    const CardButtonRecomendationClasificationMoleculs(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : Container(),
        category == "Pear shape" ? const SizedBox(height: 30.0) : Container(),
        category == "Square shape"
            ? Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  border: Border.all(
                    color: AppColors.darkPrimary,
                    width: 1.0,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CardImageDescDetailClasificationMoleculs(
                        image: Assets.images.imgTriangle.path,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 20.0,
                            right: 10.0,
                          ),
                          child: Column(
                            children: [
                              const CardTitleResultClasificationMoleculs(
                                value: "Square Shape",
                              ),
                              const SizedBox(height: 12.0),
                              GestureDetector(
                                onTap: callback,
                                child:
                                    const CardButtonRecomendationClasificationMoleculs(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}

import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/commons/widget/text/text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardHeaderResultDetailClasificationMoleculs extends StatelessWidget {
  const CardHeaderResultDetailClasificationMoleculs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FAText.bodySmallSemiBold(
              text:
                  "Knowing your body shape is important because it helps \nyou :",
              textColor: AppColors.darkPrimary,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: AppColors.darkPrimary,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: const Padding(padding: EdgeInsets.all(2.0)),
                      ),
                      const SizedBox(width: 7.0),
                      const FAText.bodySmallSemiBold(
                        text: "Make the right shopping purchases",
                        textColor: AppColors.darkPrimary,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: AppColors.darkPrimary,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: const Padding(padding: EdgeInsets.all(2.0)),
                      ),
                      const SizedBox(width: 7.0),
                      const FAText.bodySmallSemiBold(
                        text: "Dress to impress",
                        textColor: AppColors.darkPrimary,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: AppColors.darkPrimary,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: const Padding(padding: EdgeInsets.all(2.0)),
                      ),
                      const SizedBox(width: 7.0),
                      const FAText.bodySmallSemiBold(
                        text: "Feel confident about your look",
                        textColor: AppColors.darkPrimary,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: AppColors.darkPrimary,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: const Padding(padding: EdgeInsets.all(2.0)),
                      ),
                      const SizedBox(width: 7.0),
                      const FAText.bodySmallSemiBold(
                        text: "Have a wardrobe that is right for you",
                        textColor: AppColors.darkPrimary,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: AppColors.darkPrimary,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: const Padding(padding: EdgeInsets.all(2.0)),
                      ),
                      const SizedBox(width: 7.0),
                      const FAText.bodySmallSemiBold(
                        text: "Open your wardrobe with a sense of achievement",
                        textColor: AppColors.darkPrimary,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

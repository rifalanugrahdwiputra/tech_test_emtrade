import 'package:flutter/material.dart';
import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:shimmer/shimmer.dart';

class FAShimmer extends StatelessWidget {
  final double width;
  final double height;
  final ShapeBorder shapeBorder;

  FAShimmer.rect(
      {this.width = double.infinity,
      required this.height,
      super.key,
      BorderRadius borderRadius = const BorderRadius.all(Radius.circular(10))})
      : shapeBorder = RoundedRectangleBorder(borderRadius: borderRadius);

  const FAShimmer.circle({
    required double size,
    super.key,
  })  : shapeBorder = const CircleBorder(),
        width = size,
        height = size;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.neutralGrey60,
      highlightColor: AppColors.neutralGrey20,
      period: const Duration(milliseconds: 1500),
      child: Container(
        width: width,
        height: height,
        decoration:
            ShapeDecoration(color: Colors.grey[400]!, shape: shapeBorder),
      ),
    );
  }
}

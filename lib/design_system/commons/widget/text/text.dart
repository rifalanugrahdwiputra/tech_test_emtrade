import 'package:flutter/material.dart';
import 'package:template_mobile_apps/design_system/commons/typhography/foundation/text_styles.dart';

/// A Widget to handle the Text Rendering on Jandole Apps
///
/// [TextStyle] based on the [AppTextStyles] class
/// [AppTextStyles.displayLargeSemiBold] based on the 'displayLarge' the fontSize is 64
/// [AppTextStyles.headlineSmallBold] based on 'headlineSmall' the fontSize is 24
/// [AppTextStyles.titleLargeBold] based on 'titleLarge' the fontSize is 20
/// [AppTextStyles.titleMediumBold] based on 'titleMedium' the fontSize is 16
///
/// [TextStyle] based on the [FontWeight] class
/// [FontWeight.w700] based on the design about 'fontWeight.w700', the proper weight is 'Bold'.
/// [FontWeight.w600] based on the design about 'fontWeight.w600, the proper weight is 'SemiBold'.
/// [FontWeight.w500] based on the design about 'fontWeight.w500, the proper weight is 'Medium'.
/// [FontWeight.w400] based on the design about 'fontWeight.w400, the proper weight is 'Regular'.
///
class FAText extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;
  final int? maxLines;
  final Color textColor;

  const FAText.displayLargeSemiBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.displayLargeSemiBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.headlineLargeBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.headlineLargeBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.headlineLargeSemiBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.headlineLargeSemiBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.headlineLargeMedium({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.headlineLargeMedium,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.headlineLargeRegular({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.headlineLargeRegular,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.headlineSmallBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.headlineSmallBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.headlineSmallSemiBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.headlineSmallSemiBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.headlineSmallMedium({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.headlineSmallMedium,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.headlineSmallRegular({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.headlineSmallRegular,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.headlineExtraSmallBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.headlineExtraSmallBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.headlineExtraSmallSemiBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.headlineExtraSmallSemiBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.headlineExtraSmallMedium({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.headlineExtraSmallMedium,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.headlineExtraSmallRegular({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.headlineExtraSmallRegular,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.titleLargeBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.titleLargeBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.titleLargeSemiBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.titleLargeSemiBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.titleLargeMedium({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.titleLargeMedium,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.titleLargeRegular({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.titleLargeRegular,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.titleMediumBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.titleMediumBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.titleMediumSemiBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.titleMediumSemiBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.titleMediumMedium({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.titleMediumMedium,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.titleMediumRegular({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.titleMediumRegular,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.headlineMediumBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.headlineMediumBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.headlineMediumSemiBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.headlineMediumSemiBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.headlineMediumRegular({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.headlineMediumRegular,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.headlineMediumMedium({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.headlineMediumMedium,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.bodyMediumBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.bodyMediumBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.bodyMediumSemiBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.bodyMediumSemiBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.bodyMediumRegular({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.bodyMediumRegular,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.bodyMediumMedium({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.bodyMediumMedium,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.bodySmallBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.bodySmallBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.bodySmallSemiBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.bodySmallSemiBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.bodySmallMedium({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.bodySmallMedium,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.bodySmallRegular({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.bodySmallRegular,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.bodyExtraSmallBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.bodyExtraSmallBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.bodyExtraSmallSemiBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.bodyExtraSmallSemiBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.bodyExtraSmallMedium({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.bodyExtraSmallMedium,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.bodyExtraSmallRegular({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.bodyExtraSmallRegular,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.captionBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.captionBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.captionSemiBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.captionSemiBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.captionMedium({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.captionMedium,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const FAText.captionRegular({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.captionRegular,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: textOverflow,
      style: textStyle.copyWith(color: textColor),
    );
  }
}

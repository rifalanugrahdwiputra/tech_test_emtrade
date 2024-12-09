import 'package:flutter/material.dart';
import 'package:emtrade_tech_test/design_system/commons/typhography/foundation/text_styles.dart';

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
class BAText extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final TextAlign? textAlign;
  final TextOverflow? textOverflow;
  final int? maxLines;
  final Color textColor;

  const BAText.displayLargeSemiBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.displayLargeSemiBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.headlineLargeBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.headlineLargeBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.headlineLargeSemiBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.headlineLargeSemiBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.headlineLargeMedium({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.headlineLargeMedium,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.headlineLargeRegular({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.headlineLargeRegular,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.headlineSmallBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.headlineSmallBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.headlineSmallSemiBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.headlineSmallSemiBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.headlineSmallMedium({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.headlineSmallMedium,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.headlineSmallRegular({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.headlineSmallRegular,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.headlineExtraSmallBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.headlineExtraSmallBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.headlineExtraSmallSemiBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.headlineExtraSmallSemiBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.headlineExtraSmallMedium({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.headlineExtraSmallMedium,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.headlineExtraSmallRegular({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.headlineExtraSmallRegular,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.titleLargeBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.titleLargeBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.titleLargeSemiBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.titleLargeSemiBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.titleLargeMedium({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.titleLargeMedium,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.titleLargeRegular({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.titleLargeRegular,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.titleMediumBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.titleMediumBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.titleMediumSemiBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.titleMediumSemiBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.titleMediumMedium({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.titleMediumMedium,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.titleMediumRegular({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.titleMediumRegular,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.headlineMediumBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.headlineMediumBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.headlineMediumSemiBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.headlineMediumSemiBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.headlineMediumRegular({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.headlineMediumRegular,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.headlineMediumMedium({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.headlineMediumMedium,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.bodyMediumBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.bodyMediumBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.bodyMediumSemiBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.bodyMediumSemiBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.bodyMediumRegular({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.bodyMediumRegular,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.bodyMediumMedium({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.bodyMediumMedium,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.bodySmallBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.bodySmallBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.bodySmallSemiBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.bodySmallSemiBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.bodySmallMedium({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.bodySmallMedium,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.bodySmallRegular({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.bodySmallRegular,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.bodyExtraSmallBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.bodyExtraSmallBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.bodyExtraSmallSemiBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.bodyExtraSmallSemiBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.bodyExtraSmallMedium({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.bodyExtraSmallMedium,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.bodyExtraSmallRegular({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.bodyExtraSmallRegular,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.captionBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.captionBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.captionSemiBold({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.captionSemiBold,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.captionMedium({
    super.key,
    required this.text,
    this.textStyle = AppTextStyles.captionMedium,
    this.textAlign,
    this.textOverflow,
    this.maxLines,
    required this.textColor,
  });

  const BAText.captionRegular({
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

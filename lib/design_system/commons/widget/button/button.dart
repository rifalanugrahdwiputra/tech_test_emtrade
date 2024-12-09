import 'package:flutter/material.dart';
import 'package:emtrade_tech_test/common/extensions/on_build_context.dart';
import 'package:emtrade_tech_test/design_system/commons/colors/colors.dart';
import 'package:emtrade_tech_test/design_system/commons/widget/text/text.dart';

class BAButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  final double height;
  final double? width;
  final bool isExpanded;
  final Color? textColor;
  final Widget? icon;
  final Color? buttonColor;
  final Color? borderColor;
  final FocusNode? focusNode;
  final ButtonType buttonType;

  const BAButton.outlined({
    super.key,
    required this.text,
    this.isExpanded = true,
    this.textColor,
    required this.onPressed,
    this.height = 40,
    this.width,
    this.icon,
    this.borderColor,
    this.buttonColor,
    this.focusNode,
  }) : buttonType = ButtonType.outlined;

  const BAButton.filled({
    super.key,
    required this.text,
    this.isExpanded = true,
    this.textColor,
    required this.onPressed,
    this.height = 40,
    this.width,
    this.icon,
    this.borderColor,
    this.buttonColor,
    this.focusNode,
  }) : buttonType = ButtonType.filled;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: isExpanded ? context.screenWidth : width,
        height: height,
        child: getTypeButton());
  }

  Widget getTypeButton() {
    if (buttonType == ButtonType.filled) {
      return getFilledButton();
    }
    if (buttonType == ButtonType.outlined) {
      return getOutlineButton();
    }
    return const SizedBox.shrink();
  }

  Widget getFilledButton() {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor ?? AppColors.primary,
        foregroundColor: textColor ?? AppColors.white,
        disabledBackgroundColor: AppColors.grey,
      ),
      // style: ButtonStyle(
      //   backgroundColor: buttonColor != null
      //       ? MaterialStateProperty.all(buttonColor)
      //       : MaterialStateProperty.resolveWith<Color>(
      //           (Set<MaterialState> states) {
      //             if (states.contains(MaterialState.pressed)) {
      //               return buttonColor ?? AppColors.primary;
      //             } else if (states.contains(MaterialState.disabled)) {
      //               return buttonColor ?? AppColors.extendedPrimaryBlue60;
      //             }
      //             return buttonColor ?? AppColors.primary;
      //           },
      //         ),
      //   shadowColor: MaterialStateProperty.resolveWith<Color>(
      //       (_) => AppColors.neutralWhite),
      //   elevation: MaterialStateProperty.all<double>(0),
      //   shape: MaterialStateProperty.resolveWith((_) {
      //     return RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(100),
      //     );
      //   }),
      // ),
      label: BAText.titleMediumSemiBold(
          text: text, textColor: textColor ?? AppColors.white),
      icon: icon != null
          ? SizedBox(
              height: 16, width: 16, child: icon ?? const SizedBox.shrink())
          : const SizedBox.shrink(),
    );
  }

  Widget getOutlineButton() {
    return OutlinedButton.icon(
      onPressed: onPressed,
      label: BAText.titleMediumSemiBold(
          text: text, textColor: textColor ?? AppColors.white),
      style: OutlinedButton.styleFrom(
        side: BorderSide(
          width: 2,
          color: borderColor ?? AppColors.primaryRed,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        backgroundColor: buttonColor ?? Colors.transparent,
      ),
      icon: icon != null
          ? SizedBox(height: 16, width: 16, child: icon)
          : const SizedBox.shrink(),
    );
  }
}

enum ButtonType { outlined, filled }

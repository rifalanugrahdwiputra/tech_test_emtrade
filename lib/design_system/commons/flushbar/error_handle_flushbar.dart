import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:emtrade_tech_test/design_system/commons/colors/colors.dart';

void errorHandlerFlushbar({
  required BuildContext context,
  required String title,
  required String message,
  required int duration,
}) {
  Flushbar(
    title: title,
    message: message,
    backgroundColor: AppColors.primaryRed,
    boxShadows: const [
      BoxShadow(
        color: AppColors.extendedPrimaryRed80,
        offset: Offset(0.0, 2.0),
        blurRadius: 3.0,
      )
    ],
    duration: Duration(seconds: duration),
  ).show(context);
}

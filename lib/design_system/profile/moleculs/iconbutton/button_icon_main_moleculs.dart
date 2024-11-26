import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:flutter/material.dart';

class ButtonIconMainMoleculs extends StatelessWidget {
  final VoidCallback callback;
  const ButtonIconMainMoleculs({
    super.key,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: const Icon(
        Icons.arrow_forward_ios,
        color: AppColors.black,
        size: 20.0,
      ),
    );
  }
}

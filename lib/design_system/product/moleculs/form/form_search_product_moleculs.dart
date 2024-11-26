import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:flutter/material.dart';

class FormSearchProductMoleculs extends StatelessWidget {
  final Function(String) onChanged;
  final TextEditingController textController;

  const FormSearchProductMoleculs({
    super.key,
    required this.onChanged,
    required this.textController,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: 'Search...',
        hintStyle: const TextStyle(fontSize: 14),
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: AppColors.darkPrimary),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            width: 2.0,
            color: AppColors.darkPrimary,
          ),
        ),
        filled: true,
        fillColor: AppColors.white,
      ),
    );
  }
}

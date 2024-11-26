import 'package:template_mobile_apps/design_system/product/moleculs/form/form_search_product_moleculs.dart';
import 'package:flutter/material.dart';

class FormSearchProductOrganism extends StatelessWidget {
  final Function(String) onChanged;
  final TextEditingController textController;
  const FormSearchProductOrganism(
      {super.key, required this.onChanged, required this.textController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: 45.0,
        child: FormSearchProductMoleculs(
          onChanged: onChanged,
          textController: textController,
        ),
      ),
    );
  }
}

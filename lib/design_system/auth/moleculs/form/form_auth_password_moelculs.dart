import 'package:template_mobile_apps/design_system/commons/widget/form/forms.dart';
import 'package:flutter/material.dart';

class FormAuthPasswordMoelculs extends StatelessWidget {
  final Function(String) onChanged;
  final TextEditingController textController;
  const FormAuthPasswordMoelculs({
    super.key,
    required this.onChanged,
    required this.textController,
  });

  @override
  Widget build(BuildContext context) {
    return FAForms.password(
      placeholder: "Masukan password mu!",
      height: 42,
      onChanged: onChanged,
      controller: textController,
    );
  }
}

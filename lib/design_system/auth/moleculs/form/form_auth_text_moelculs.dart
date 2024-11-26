import 'package:template_mobile_apps/design_system/commons/widget/form/forms.dart';
import 'package:flutter/material.dart';

class FormAuthTextMoelculs extends StatelessWidget {
  final Function(String) onChanged;
  final TextEditingController textController;
  final String placeholder;
  const FormAuthTextMoelculs({
    super.key,
    required this.onChanged,
    required this.textController,
    required this.placeholder,
  });

  @override
  Widget build(BuildContext context) {
    return FAForms.text(
      placeholder: placeholder,
      height: 42,
      onChanged: onChanged,
      controller: textController,
    );
  }
}

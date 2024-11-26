import 'package:template_mobile_apps/design_system/commons/widget/form/forms.dart';
import 'package:flutter/material.dart';

class FormAuthEmailMoelculs extends StatelessWidget {
  final Function(String) onChanged;
  final TextEditingController textController;
  const FormAuthEmailMoelculs({
    super.key,
    required this.onChanged,
    required this.textController,
  });

  @override
  Widget build(BuildContext context) {
    return FAForms.email(
      placeholder: "Masukan email mu!",
      height: 42,
      onChanged: onChanged,
      controller: textController,
    );
  }
}

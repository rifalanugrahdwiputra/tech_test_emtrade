import 'package:emtrade_tech_test/design_system/commons/widget/form/forms.dart';
import 'package:emtrade_tech_test/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FormSearchMoleculs extends StatefulWidget {
  final TextEditingController controller;
  final Function(String) onChanged;
  const FormSearchMoleculs({
    super.key, 
    required this.controller, 
    required this.onChanged,
  });

  @override
  State<FormSearchMoleculs> createState() => _FormSearchMoleculsState();
}

class _FormSearchMoleculsState extends State<FormSearchMoleculs> {
  bool isDeleteAllVisible = false;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_updateSuffixIconVisibility);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_updateSuffixIconVisibility);
    super.dispose();
  }

  void _updateSuffixIconVisibility() {
    setState(() {
      isDeleteAllVisible = widget.controller.text.isNotEmpty;
    });
  }

  void _clearText() {
    widget.controller.clear();
    widget.onChanged('');
  }

  @override
  Widget build(BuildContext context) {
    return BAForms.text(
      controller: widget.controller,
      placeholder: "Cari topik yang kamu mau di sini.",
      prefixIcon: SvgPicture.asset(
        Assets.icons.icSearchForm,
        height: 20.0,
        width: 20.0,
      ),
      suffixIcon: isDeleteAllVisible
          ? GestureDetector(
              onTap: _clearText,
              child: SvgPicture.asset(
                Assets.icons.icCancel,
                height: 20.0,
                width: 20.0,
              ),
            )
          : null,
      onChanged: widget.onChanged,
      filled: true,
    );
  }
}

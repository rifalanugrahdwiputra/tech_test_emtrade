import 'package:emtrade_tech_test/common/extensions/on_string_extension.dart';
import 'package:emtrade_tech_test/design_system/article_content/moleculs/form_search_moleculs.dart';
import 'package:emtrade_tech_test/design_system/article_content/moleculs/title_information_search_moleculs.dart';
import 'package:flutter/material.dart';

class FormSearchOrganism extends StatefulWidget {
  final TextEditingController controller;
  final Function(String) onChanged;

  const FormSearchOrganism({
    super.key, 
    required this.controller, 
    required this.onChanged,
  });

  @override
  State<FormSearchOrganism> createState() => _FormSearchOrganismState();
}

class _FormSearchOrganismState extends State<FormSearchOrganism> {
  bool showSearchInformation = false;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_updateSearchInformationVisibility);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_updateSearchInformationVisibility);
    super.dispose();
  }

  void _updateSearchInformationVisibility() {
    setState(() {
      showSearchInformation = widget.controller.text.isNotEmptyOrNull;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FormSearchMoleculs(
          controller: widget.controller,
          onChanged: widget.onChanged,
        ),
        if (showSearchInformation) ...[
          const SizedBox(height: 16.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: TitleInformationSearchMoleculs(
                  searchValue: widget.controller.text,
                ),
              ),
            ],
          ),
        ],
      ],
    );
  }
}

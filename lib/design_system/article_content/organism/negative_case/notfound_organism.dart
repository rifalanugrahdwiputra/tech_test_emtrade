import 'package:emtrade_tech_test/design_system/article_content/moleculs/negative_case/content_negative_case_moleculs.dart';
import 'package:emtrade_tech_test/design_system/article_content/moleculs/negative_case/header_icon_moleculs.dart';
import 'package:emtrade_tech_test/design_system/article_content/moleculs/negative_case/title_negative_case_moleculs.dart';
import 'package:flutter/material.dart';

class NotfoundOrganism extends StatelessWidget {
  const NotfoundOrganism({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HeaderIconMoleculs(),
        SizedBox(height: 24.0),
        TitleNegativeCaseMoleculs(title: "Hasil Tidak Ditemukan"),
        SizedBox(height: 16.0),
        ContentNegativeCaseMoleculs(content: "Harap periksa kembali pencarian kamu."),
      ],
    );
  }
}
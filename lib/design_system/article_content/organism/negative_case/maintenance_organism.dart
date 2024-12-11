import 'package:emtrade_tech_test/design_system/article_content/moleculs/negative_case/content_negative_case_moleculs.dart';
import 'package:emtrade_tech_test/design_system/article_content/moleculs/negative_case/header_icon_moleculs.dart';
import 'package:emtrade_tech_test/design_system/article_content/moleculs/negative_case/title_negative_case_moleculs.dart';
import 'package:flutter/material.dart';

class MaintenanceOrganism extends StatelessWidget {
  const MaintenanceOrganism({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        HeaderIconMoleculs(),
        SizedBox(height: 24.0),
        TitleNegativeCaseMoleculs(title: "Halaman Sedang Dalam Pengembangan"),
        SizedBox(height: 16.0),
        ContentNegativeCaseMoleculs(content: "Kami sedang bekerja keras untuk menyelesaikan halaman ini. Harap tunggu beberapa saat, dan kami akan segera kembali dengan sesuatu yang lebih menarik!"),
      ],
    );
  }
}
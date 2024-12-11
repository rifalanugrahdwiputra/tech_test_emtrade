import 'package:emtrade_tech_test/design_system/article_content/organism/negative_case/maintenance_organism.dart';
import 'package:flutter/material.dart';

class MaintanenceScreen extends StatelessWidget {
  const MaintanenceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0,),
          child:  MaintenanceOrganism(),
        ),
      ),
    );
  }
}
import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/product/moleculs/tab_header_moleculs.dart';
import 'package:flutter/material.dart';

class TabBarOrganism extends StatefulWidget {
  final TabController controller;
  const TabBarOrganism({super.key, required this.controller});

  @override
  State<TabBarOrganism> createState() => _TabBarOrganismState();
}

class _TabBarOrganismState extends State<TabBarOrganism>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: widget.controller,
      indicatorColor: AppColors.primary,
      indicatorWeight: 1.5,
      tabs: [
        Tab(
          child: TabHeaderMoleculs(
            indexTab: 0,
            indexController: widget.controller.index,
            label: 'Home',
          ),
        ),
        Tab(
          child: TabHeaderMoleculs(
            indexTab: 1,
            indexController: widget.controller.index,
            label: 'Blouse',
          ),
        ),
        Tab(
          child: TabHeaderMoleculs(
            indexTab: 2,
            indexController: widget.controller.index,
            label: 'Formal',
          ),
        ),
        Tab(
          child: TabHeaderMoleculs(
            indexTab: 3,
            indexController: widget.controller.index,
            label: 'Dress',
          ),
        ),
      ],
    );
  }
}

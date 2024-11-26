import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/product/organism/form/form_search_product_organism.dart';
import 'package:template_mobile_apps/design_system/product/organism/tab_bar_organism.dart';
import 'package:template_mobile_apps/presentation/product/page/blouse/product_blouse_screen.dart';
import 'package:template_mobile_apps/presentation/product/page/dress/product_dress_screen.dart';
import 'package:template_mobile_apps/presentation/product/page/formal/product_formal_screen.dart';
import 'package:template_mobile_apps/presentation/product/page/main/product_main_screen.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProductPage();
  }
}

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage>
    with SingleTickerProviderStateMixin {
  late final TabController _controller;

  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    _controller = TabController(length: 4, vsync: this);
    _controller.addListener(_handleTabSelection);
    super.initState();
  }

  void _handleTabSelection() {
    if (!mounted) return;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.white,
          automaticallyImplyLeading: false,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(80.0),
            child: Column(
              children: [
                FormSearchProductOrganism(
                  onChanged: (value) {},
                  textController: searchController,
                ),
                TabBarOrganism(controller: _controller),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: TabBarView(controller: _controller, children: const [
                ProductMainScreen(),
                ProductBlouseScreen(),
                ProductFormalScreen(),
                ProductDressScreen(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

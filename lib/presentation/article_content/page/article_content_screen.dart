
import 'package:flutter/material.dart';

class ArticleContentScreen extends StatelessWidget {
  const ArticleContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ArticleContentPage();
  }
}

class ArticleContentPage extends StatefulWidget {
  const ArticleContentPage({super.key});

  @override
  State<ArticleContentPage> createState() => _ArticleContentPageState();
}

class _ArticleContentPageState extends State<ArticleContentPage>
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
    return Scaffold(
      body: SafeArea(child: Text("data")),
    );
  }
}

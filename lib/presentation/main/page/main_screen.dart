import 'package:emtrade_tech_test/common/injection/injection.dart';
import 'package:emtrade_tech_test/design_system/commons/colors/colors.dart';
import 'package:emtrade_tech_test/design_system/main/organism/bottom_nav_bar_organism.dart';
import 'package:emtrade_tech_test/presentation/article_content/page/article_content_screen.dart';
import 'package:emtrade_tech_test/presentation/main/cubit/main_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainPage();
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with WidgetsBindingObserver {
  late List<Widget> routes;

  @override
  void initState() {
    super.initState();
    _initializeRoutes();
  }

  void _initializeRoutes() async {
    routes = _buildRoutes();
    setState(() {});
  }

  void _onChangeTabIndex(BuildContext context, int index) {
    context.read<MainCubit>().changeTabIndex(index);
  }

  List<Widget> _buildRoutes() {
    return [
      const ArticleContentPage(),
      const ArticleContentPage(),
      const ArticleContentPage(),
      const ArticleContentPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<MainCubit>(),
        ),
      ],
      child: BlocBuilder<MainCubit, int>(
        builder: (context, tabIndex) {
          return Scaffold(
            body: routes[tabIndex],
            backgroundColor: AppColors.white,
            bottomNavigationBar: BottomNavigationBarOrganism(
              currentIndex: tabIndex,
              onTap: (int index) {
                _onChangeTabIndex(context, index);
              },
            ),
          );
        },
      ),
    );
  }
}

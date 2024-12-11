import 'package:emtrade_tech_test/common/injection/injection.dart';
import 'package:emtrade_tech_test/design_system/article_content/organism/card_content_organism.dart';
import 'package:emtrade_tech_test/design_system/article_content/organism/negative_case/notfound_organism.dart';
import 'package:emtrade_tech_test/design_system/commons/widget/shimmer/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:emtrade_tech_test/design_system/article_content/organism/appbar_organism.dart';
import 'package:emtrade_tech_test/design_system/article_content/organism/form_search_organism.dart';
import 'package:emtrade_tech_test/design_system/commons/colors/colors.dart';
import 'package:emtrade_tech_test/presentation/article_content/cubit/article_content_cubit.dart';
import 'package:emtrade_tech_test/presentation/article_content/cubit/article_content_state.dart';

class ArticleContentScreen extends StatelessWidget {
  const ArticleContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ArticleContentCubit>()..getContent(),
        ),
      ],
      child: const ArticleContentPage(),
    );

  }
}

class ArticleContentPage extends StatefulWidget {
  const ArticleContentPage({super.key});

  @override
  State<ArticleContentPage> createState() => _ArticleContentPageState();
}

class _ArticleContentPageState extends State<ArticleContentPage> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<ArticleContentCubit>().articleContentList();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        context.read<ArticleContentCubit>().loadMore();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ArticleContentCubit>();
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppbarOrganism(onClickFilter: () {}),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: Column(
          children: [
            FormSearchOrganism(
              controller: cubit.controller,
              onChanged: (value) {},
            ),
            const SizedBox(height: 16.0),
            BlocBuilder<ArticleContentCubit, ArticleContentState>(
              builder: (context, state) {
                if (state is ArticleContentLoading) {
                  return Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                          children: List.generate(
                            10,
                            (index) => Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: BAShimmer.rect(height: 120.0),
                            ),
                          ),
                        ),
                    ),
                  );
                } else if (state is ArticleContentError) {
                  return Center(child: Text('Error: ${state.message}'));
                } else if (state is ArticleContentLoaded) {
                  final articleContentListData = state.articleContentListData;
                  if (articleContentListData == null || articleContentListData.isEmpty) {
                    return const Padding(
                      padding:  EdgeInsets.symmetric(vertical: 16.0),
                      child:  NotfoundOrganism(),
                    );
                  }
                  return Expanded(
                    child: RefreshIndicator(
                      onRefresh: () => context.read<ArticleContentCubit>().articleContentList(),
                      child: ListView.builder(
                        controller: _scrollController,
                        itemCount: articleContentListData.length,
                        itemBuilder: (context, index) {
                          final data = articleContentListData[index];
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 16.0),
                            child: CardContentOrganism(
                              contentFormat: data.contentFormat ?? "-", 
                              category: data.category ?? "-", 
                              shortContent: data.shortContent ?? "-", 
                              date: data.updatedAt ?? "-", 
                              imageUrl: data.image ?? "-"
                            ),
                          );
                        },
                      ),
                    ),
                  );
                }
                return const SizedBox();
              },
            ),
          ],
        ),
      ),
    );
  }
}

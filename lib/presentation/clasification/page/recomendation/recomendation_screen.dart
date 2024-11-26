// ignore_for_file: must_be_immutable

import 'package:template_mobile_apps/common/injection/injection.dart';
import 'package:template_mobile_apps/design_system/clasification/organism/header/header_recomendation_organism.dart';
import 'package:template_mobile_apps/design_system/clasification/organism/title/title_clasification_organism.dart';
import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/product/organism/card/card_single_product_organism.dart';
import 'package:template_mobile_apps/design_system/product/organism/title/title_best_product_organism.dart';
import 'package:template_mobile_apps/domain/product/usecases/product_list_params.dart';
import 'package:template_mobile_apps/presentation/navigation/fa_routes.dart';
import 'package:template_mobile_apps/presentation/product/bloc/product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RecomendationScreen extends StatelessWidget {
  String category;
  RecomendationScreen({
    super.key,
    required this.category
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductCubit>()..getContent(),
      child: RecomendationScreenPage(category : category),
    );
  }
}

class RecomendationScreenPage extends StatefulWidget {
  String category;
  RecomendationScreenPage({super.key, required this.category});

  @override
  State<RecomendationScreenPage> createState() => _RecomendationScreenPageState();
}

class _RecomendationScreenPageState extends State<RecomendationScreenPage> {
  late ProductListParams paramsProductMain;

  @override
  void initState() {
    super.initState();
    paramsProductMain = ProductListParams(
      orderBy: "DESC",
      sortBy: "",
      limit: 100,
      page: 1,
      category: widget.category,
    );
    context.read<ProductCubit>().productList(params: paramsProductMain);
  }


  String _getCategoryDetails(String category) {
    switch (category) {
      case 'triangle':
        return "Triangle";
      case 'Pear shape':
        return "Pear Shape";
      case 'Square shape':
        return "Square Shape";
      default:
        return "Unknown";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: BlocBuilder<ProductCubit, ProductState>(
        builder: (context, state) {
          if (state is ProductLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is ProductError) {
            return Center(child: Text(state.message));
          } else if (state is ProductLoaded) {
            final products = state.productListData;
            return SafeArea(
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 30.0,
                        right: 30.0,
                        top: 20.0,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TitleClasificationOrganism(
                            callback: () {
                              context.pop();
                            },
                            title: _getCategoryDetails(widget.category),
                          ),
                          const SizedBox(height: 17.0),
                          const HeaderRecomendationOrganism(),
                        ],
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20.0,
                      horizontal: 20.0,
                    ),
                    sliver: SliverGrid(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20.0,
                        crossAxisSpacing: 20.0,
                        childAspectRatio: 150 / 165,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          final product = products?[index];
                          return CardSingleProductOrganism(
                            onPressed: () {
                              context.pushNamed(FARoutes.nrProductDetail,
                                queryParameters: {
                                  'id': product?.id.toString(),
                                },
                              );
                            },
                            image: product?.image ?? "",
                            titleProduct: product?.nameProduct ?? "",
                            price: "Rp.${product?.price}",
                            priceDisc: "Rp.${product?.discPrice}",
                          );
                        },
                        childCount: 2,
                      ),
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30.0,
                      ),
                      child: TitleBestProductOrganism(),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 20.0,
                    ),
                    sliver: SliverGrid(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20.0,
                        crossAxisSpacing: 20.0,
                        childAspectRatio: 150 / 170,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          final product = products?[index];
                          return CardSingleProductOrganism(
                            onPressed: () {
                              context.pushNamed(FARoutes.nrProductDetail,
                                queryParameters: {
                                  'id': product?.id.toString(),
                                },
                              );
                            },
                            image: product?.image ?? "",
                            titleProduct: product?.nameProduct ?? "",
                            price: "Rp.${product?.price}",
                            priceDisc: "Rp.${product?.discPrice}",
                          );
                        },
                        childCount: products?.length
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
          return const Center(child: Text('No products available.'));
        },
      ),
    );
  }
}

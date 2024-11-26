import 'package:template_mobile_apps/common/injection/injection.dart';
import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/product/organism/card/card_single_product_organism.dart';
import 'package:template_mobile_apps/design_system/product/organism/title/title_best_product_organism.dart';
import 'package:template_mobile_apps/domain/product/usecases/product_list_params.dart';
import 'package:template_mobile_apps/presentation/navigation/fa_routes.dart';
import 'package:template_mobile_apps/presentation/product/bloc/product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

const paramsProductMain = ProductListParams(
  orderBy: "DESC",
  sortBy: "",
  limit: 10,
  page: 1,
  category: "Pear shape"
);

class ProductBlouseScreen extends StatelessWidget {
  const ProductBlouseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductCubit>()..getContent(),
      child: const ProductBlouseScreenPage(),
    );
  }
}

class ProductBlouseScreenPage extends StatefulWidget {
  const ProductBlouseScreenPage({super.key});

  @override
  State<ProductBlouseScreenPage> createState() => _ProductBlouseScreenPageState();
}

class _ProductBlouseScreenPageState extends State<ProductBlouseScreenPage> {
  @override
  void initState() {
    super.initState();
    context.read<ProductCubit>().productList(params: paramsProductMain);
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
            return CustomScrollView(
              slivers: [
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
                      horizontal: 20.0,
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
            );
          }
          return const Center(child: Text('No products available.'));
        },
      ),
    );
  }
}
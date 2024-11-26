import 'package:template_mobile_apps/common/injection/injection.dart';
import 'package:template_mobile_apps/design_system/commons/colors/colors.dart';
import 'package:template_mobile_apps/design_system/product/organism/detail/color/color_product_detail_organism.dart';
import 'package:template_mobile_apps/design_system/product/organism/detail/desc/desc_product_detail_organism.dart';
import 'package:template_mobile_apps/design_system/product/organism/detail/footer/button_detail_organism.dart';
import 'package:template_mobile_apps/design_system/product/organism/detail/header/header_detail_organism.dart';
import 'package:template_mobile_apps/design_system/product/organism/detail/size/size_product_detail_organism.dart';
import 'package:template_mobile_apps/design_system/product/organism/detail/title/title_product_detail_organism.dart';
import 'package:template_mobile_apps/domain/product/usecases/product_detail_params.dart';
import 'package:template_mobile_apps/presentation/product/bloc/product_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ProductDetailScreen extends StatelessWidget {
  final String id;
  const ProductDetailScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductCubit>()..getContent(),
      child: ProductDetailScreenPage(id: id),
    );
  }
}

class ProductDetailScreenPage extends StatefulWidget {
  final String id;
  const ProductDetailScreenPage({super.key, required this.id});

  @override
  State<ProductDetailScreenPage> createState() => _ProductDetailScreenPageState();
}

class _ProductDetailScreenPageState extends State<ProductDetailScreenPage> {
  @override
  void initState() {
    super.initState();
    final productId = int.tryParse(widget.id);
    context.read<ProductCubit>().productDetail(params: ProductDetailParams(id: productId ?? 0));
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
            final products = state.productDetailData;
          return SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    HeaderDetailOrganism(
                      callbackClose: () {
                        context.pop();
                      },
                      image: products?.image ?? "",
                    ),
                    const SizedBox(height: 30.0),
                    TitleProductDetailOrganism(
                      productName: products?.nameProduct?? "",
                      price: "Rp.${products?.price}",
                      priceDisc: "Rp.${products?.discPrice}",
                    ),
                    const SizedBox(height: 35.0),
                    DescProductDetailOrganism(
                      desc: products?.descProduct ?? "-"
                    ),
                    const SizedBox(height: 28.0),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ColorProductDetailOrganism(),
                        SizeProductDetailOrganism(),
                      ],
                    ),
                    const SizedBox(height: 40.0),
                    ButtonDetailOrganism(
                      onPressed: () {
                        context.pop();
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
          }
          return const Center(child: Text('No products available.'));
        }
      ),
    );
  }
}

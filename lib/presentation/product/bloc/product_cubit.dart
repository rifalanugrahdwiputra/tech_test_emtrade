import 'package:equatable/equatable.dart';
import 'package:template_mobile_apps/domain/product/data/product_data.dart';
import 'package:template_mobile_apps/domain/product/usecases/product_detail_params.dart';
import 'package:template_mobile_apps/domain/product/usecases/product_detail_usecase.dart';
import 'package:template_mobile_apps/domain/product/usecases/product_list_params.dart';
import 'package:template_mobile_apps/domain/product/usecases/product_list_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'product_state.dart';

@injectable
class ProductCubit extends Cubit<ProductState> {
  final ProductListUsecase _productListUsecase;
  final ProductDetailUsecase _productDetailUsecase;
  ProductCubit(this._productListUsecase, this._productDetailUsecase,)
      : super(ProductInitial());

  void getContent() async {
    emit(ProductLoaded(
      null,
      null,
    ));
  }

  Future<void> productList({required ProductListParams params}) async {
    final currentState = state;
    if (currentState is ProductLoaded) {
      final result = await _productListUsecase
                .call(params);
            result.when(success: (result) {
              emit(
                currentState.copyWith(
                  productListData: result.results,
                ),
              );
            }, error: (e) {
              emit(
                currentState.copyWith(
                  productListData: null,
                ),
              );
            },
        );
    }
  }

  Future<void> productDetail({required ProductDetailParams params}) async {
    final currentState = state;
    if (currentState is ProductLoaded) {
      final result = await _productDetailUsecase
                .call(params);
            result.when(success: (result) {
              emit(
                currentState.copyWith(
                  productDetailData: result.results,
                ),
              );
            }, error: (e) {
              emit(
                currentState.copyWith(
                  productListData: null,
                ),
              );
            },
        );
    }
  }
  
}

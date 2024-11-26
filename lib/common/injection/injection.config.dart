// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:template_mobile_apps/data/classification/data_sources/classification_remote_data_source.dart'
    as _i801;
import 'package:template_mobile_apps/data/classification/repositories/classification_repository_impl.dart'
    as _i762;
import 'package:template_mobile_apps/data/classification/services/classification_remote_service.dart'
    as _i765;
import 'package:template_mobile_apps/data/product/data_sources/product_remote_data_source.dart'
    as _i333;
import 'package:template_mobile_apps/data/product/repositories/product_repository_impl.dart'
    as _i795;
import 'package:template_mobile_apps/data/product/services/product_remote_service.dart'
    as _i947;
import 'package:template_mobile_apps/data/utils/dio/base/classification_ret_network_client.dart'
    as _i489;
import 'package:template_mobile_apps/data/utils/dio/base/product_ret_network_client.dart'
    as _i400;
import 'package:template_mobile_apps/data/utils/fa_dio_error_handler.dart'
    as _i142;
import 'package:template_mobile_apps/domain/classification/repositories/classfication_repository.dart'
    as _i515;
import 'package:template_mobile_apps/domain/classification/usecases/classification_image_usecase.dart'
    as _i551;
import 'package:template_mobile_apps/domain/product/repositories/product_repository.dart'
    as _i1013;
import 'package:template_mobile_apps/domain/product/usecases/product_detail_usecase.dart'
    as _i324;
import 'package:template_mobile_apps/domain/product/usecases/product_list_usecase.dart'
    as _i549;
import 'package:template_mobile_apps/presentation/clasification/bloc/clasification_cubit.dart'
    as _i341;
import 'package:template_mobile_apps/presentation/global_blocs/error/bloc/error_cubit.dart'
    as _i987;
import 'package:template_mobile_apps/presentation/main/cubit/main_cubit.dart'
    as _i362;
import 'package:template_mobile_apps/presentation/product/bloc/product_cubit.dart'
    as _i779;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final baseClassificationRetrofitInjectableModule =
        _$BaseClassificationRetrofitInjectableModule();
    final baseProductRetrofitInjectableModule =
        _$BaseProductRetrofitInjectableModule();
    gh.factory<_i362.MainCubit>(() => _i362.MainCubit());
    gh.singleton<_i142.FADioErrHandler>(() => _i142.FADioErrHandler());
    gh.lazySingleton<_i400.ProductRetNetworkClient>(
        () => _i400.ProductRetNetworkClient());
    gh.lazySingleton<_i489.ClassificationRetApiDio>(
        () => _i489.ClassificationRetApiDio());
    gh.lazySingleton<_i987.GlobalErrorCubit>(() => _i987.GlobalErrorCubit());
    gh.factory<_i765.ClassificationRemoteService>(() =>
        baseClassificationRetrofitInjectableModule
            .getClassificationRemoteService(
                gh<_i489.ClassificationRetApiDio>()));
    gh.factory<_i947.ProductRemoteService>(() =>
        baseProductRetrofitInjectableModule
            .getProductRemoteService(gh<_i400.ProductRetNetworkClient>()));
    gh.lazySingleton<_i333.ProductRemoteDataSource>(() =>
        _i333.ProductRemoteDataSourceImpl(gh<_i947.ProductRemoteService>()));
    gh.lazySingleton<_i801.ClassificationRemoteDataSource>(() =>
        _i801.ClassificationRemoteDataSourceImpl(
            gh<_i765.ClassificationRemoteService>()));
    gh.lazySingleton<_i515.ClassficationRepository>(
        () => _i762.ClassficationRepositoryImpl(
              gh<_i801.ClassificationRemoteDataSource>(),
              gh<_i142.FADioErrHandler>(),
            ));
    gh.lazySingleton<_i1013.ProductRepository>(
        () => _i795.ProductRepositoryImpl(
              gh<_i333.ProductRemoteDataSource>(),
              gh<_i142.FADioErrHandler>(),
            ));
    gh.lazySingleton<_i549.ProductListUsecase>(
        () => _i549.ProductListUsecase(gh<_i1013.ProductRepository>()));
    gh.lazySingleton<_i324.ProductDetailUsecase>(
        () => _i324.ProductDetailUsecase(gh<_i1013.ProductRepository>()));
    gh.factory<_i779.ProductCubit>(() => _i779.ProductCubit(
          gh<_i549.ProductListUsecase>(),
          gh<_i324.ProductDetailUsecase>(),
        ));
    gh.lazySingleton<_i551.ClassificationImageUsecase>(() =>
        _i551.ClassificationImageUsecase(gh<_i515.ClassficationRepository>()));
    gh.factory<_i341.ClasificationCubit>(
        () => _i341.ClasificationCubit(gh<_i551.ClassificationImageUsecase>()));
    return this;
  }
}

class _$BaseClassificationRetrofitInjectableModule
    extends _i489.BaseClassificationRetrofitInjectableModule {}

class _$BaseProductRetrofitInjectableModule
    extends _i400.BaseProductRetrofitInjectableModule {}

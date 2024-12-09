// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:emtrade_tech_test/data/article_content/data_sources/article_content_remote_data_source.dart'
    as _i1007;
import 'package:emtrade_tech_test/data/article_content/repositories/article_content_repository_impl.dart'
    as _i856;
import 'package:emtrade_tech_test/data/article_content/services/article_content_remote_service.dart'
    as _i857;
import 'package:emtrade_tech_test/data/utils/ba_dio_error_handler.dart'
    as _i355;
import 'package:emtrade_tech_test/data/utils/dio/base/base_ret_network_client.dart'
    as _i645;
import 'package:emtrade_tech_test/domain/article_content/repositories/article_content_repository.dart'
    as _i265;
import 'package:emtrade_tech_test/domain/article_content/usecases/article_content_usecase.dart'
    as _i946;
import 'package:emtrade_tech_test/presentation/global_blocs/error/bloc/error_cubit.dart'
    as _i987;
import 'package:emtrade_tech_test/presentation/main/cubit/main_cubit.dart'
    as _i362;

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
    final baseProductRetrofitInjectableModule =
        _$BaseProductRetrofitInjectableModule();
    gh.factory<_i362.MainCubit>(() => _i362.MainCubit());
    gh.singleton<_i355.BADioErrHandler>(() => _i355.BADioErrHandler());
    gh.lazySingleton<_i645.BaseRetNetworkClient>(
        () => _i645.BaseRetNetworkClient());
    gh.lazySingleton<_i987.GlobalErrorCubit>(() => _i987.GlobalErrorCubit());
    gh.factory<_i857.ArticleContentRemoteService>(() =>
        baseProductRetrofitInjectableModule
            .getArticleContentRemoteService(gh<_i645.BaseRetNetworkClient>()));
    gh.lazySingleton<_i1007.ArticleContentRemoteDataSource>(() =>
        _i1007.ArticleContentRemoteDataSourceImpl(
            gh<_i857.ArticleContentRemoteService>()));
    gh.lazySingleton<_i265.ArticleContentRepository>(
        () => _i856.ArticleContentRepositoryImpl(
              gh<_i1007.ArticleContentRemoteDataSource>(),
              gh<_i355.BADioErrHandler>(),
            ));
    gh.lazySingleton<_i946.ArticleContentUsecase>(() =>
        _i946.ArticleContentUsecase(gh<_i265.ArticleContentRepository>()));
    return this;
  }
}

class _$BaseProductRetrofitInjectableModule
    extends _i645.BaseProductRetrofitInjectableModule {}

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:emtrade_tech_test/data/article_content/data_sources/article_content_remote_data_source.dart'
    as _i931;
import 'package:emtrade_tech_test/data/article_content/repositories/article_content_repository_impl.dart'
    as _i909;
import 'package:emtrade_tech_test/data/article_content/services/article_content_remote_service.dart'
    as _i1017;
import 'package:emtrade_tech_test/data/utils/ba_dio_error_handler.dart'
    as _i485;
import 'package:emtrade_tech_test/data/utils/dio/base/base_ret_network_client.dart'
    as _i632;
import 'package:emtrade_tech_test/domain/article_content/repositories/article_content_repository.dart'
    as _i139;
import 'package:emtrade_tech_test/domain/article_content/usecases/article_content_usecase.dart'
    as _i296;
import 'package:emtrade_tech_test/presentation/article_content/cubit/article_content_cubit.dart'
    as _i612;
import 'package:emtrade_tech_test/presentation/global_blocs/error/bloc/error_cubit.dart'
    as _i977;
import 'package:emtrade_tech_test/presentation/main/cubit/main_cubit.dart'
    as _i1053;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

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
    gh.factory<_i1053.MainCubit>(() => _i1053.MainCubit());
    gh.singleton<_i485.BADioErrHandler>(() => _i485.BADioErrHandler());
    gh.lazySingleton<_i632.BaseRetNetworkClient>(
        () => _i632.BaseRetNetworkClient());
    gh.lazySingleton<_i977.GlobalErrorCubit>(() => _i977.GlobalErrorCubit());
    gh.factory<_i1017.ArticleContentRemoteService>(() =>
        baseProductRetrofitInjectableModule
            .getArticleContentRemoteService(gh<_i632.BaseRetNetworkClient>()));
    gh.lazySingleton<_i931.ArticleContentRemoteDataSource>(() =>
        _i931.ArticleContentRemoteDataSourceImpl(
            gh<_i1017.ArticleContentRemoteService>()));
    gh.lazySingleton<_i139.ArticleContentRepository>(
        () => _i909.ArticleContentRepositoryImpl(
              gh<_i931.ArticleContentRemoteDataSource>(),
              gh<_i485.BADioErrHandler>(),
            ));
    gh.lazySingleton<_i296.ArticleContentUsecase>(() =>
        _i296.ArticleContentUsecase(gh<_i139.ArticleContentRepository>()));
    gh.factory<_i612.ArticleContentCubit>(
        () => _i612.ArticleContentCubit(gh<_i296.ArticleContentUsecase>()));
    return this;
  }
}

class _$BaseProductRetrofitInjectableModule
    extends _i632.BaseProductRetrofitInjectableModule {}

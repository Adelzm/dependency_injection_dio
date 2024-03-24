// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dependency_injection_dio/data/networking/config.dart' as _i4;
import 'package:dependency_injection_dio/data/networking/facts_client.dart'
    as _i5;
import 'package:dependency_injection_dio/data/repos/fun_fact_repo.dart' as _i6;
import 'package:dependency_injection_dio/services/dio_provider.dart' as _i7;
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt $initGetIt({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioProvider = _$DioProvider();
    gh.singleton<_i3.Dio>(() => dioProvider.dio(gh<_i4.IConfig>()));
    gh.factory<_i4.IConfig>(
      () => _i4.CatConfig(),
      instanceName: 'CatConfig',
    );
    gh.factory<_i4.IConfig>(
      () => _i4.ChuckConfig(),
      instanceName: 'ChuckConfig',
    );
    gh.factory<_i5.FactClient>(
      () => _i5.CatFactClient(
        dio: gh<_i3.Dio>(),
        config: gh<_i4.IConfig>(instanceName: 'CatConfig'),
      ),
      instanceName: 'CatFactClient',
    );
    gh.factory<_i5.FactClient>(
      () => _i5.ChuckFactClient(
        dio: gh<_i3.Dio>(),
        config: gh<_i4.IConfig>(instanceName: 'ChuckConfig'),
      ),
      instanceName: 'ChuckFactClient',
    );
    gh.factory<_i6.FunFactRepo>(() => _i6.FunFactsRepoImp(
        factClient: gh<_i5.FactClient>(instanceName: 'CatFactClient')));
    return this;
  }
}

class _$DioProvider extends _i7.DioProvider {}

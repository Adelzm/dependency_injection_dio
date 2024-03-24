// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/networking/facts_client.dart' as _i5;
import '../data/networking/i_config.dart' as _i3;
import '../data/repos/fun_fact_repo.dart' as _i6;
import 'dio_provider.dart' as _i7;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final dioProvider = _$DioProvider();
  gh.factory<_i3.IConfig>(() => _i3.AppConfig());
  gh.singleton<_i4.Dio>(() => dioProvider.dio(gh<_i3.IConfig>()));
  gh.factory<_i5.FactClient>(() => _i5.CatFactClient(
        dio: gh<_i4.Dio>(),
        config: gh<_i3.IConfig>(),
      ));
  gh.factory<_i6.FunFactRepo>(
      () => _i6.CatFacts(factClient: gh<_i5.FactClient>()));
  return getIt;
}

class _$DioProvider extends _i7.DioProvider {}

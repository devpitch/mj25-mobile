// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i558;
import 'package:get_it/get_it.dart' as _i174;
import 'package:graphql_flutter/graphql_flutter.dart' as _i128;
import 'package:hive/hive.dart' as _i979;
import 'package:hive_flutter/adapters.dart' as _i744;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../cores/cache/cache_container.dart' as _i566;
import '../cores/cache/cache_storage_util.dart' as _i667;
import '../cores/cache/secure_storage.dart' as _i992;
import '../cores/cache/secure_storage_interactor.dart' as _i812;
import '../cores/network/client/api_client.dart' as _i885;
import '../cores/network/models/DataHolder.dart' as _i623;
import '../modules/authentication/domain/auth_repository.dart' as _i499;
import '../modules/dashboard/domain/dashboard_repository.dart' as _i932;
import 'injector.dart' as _i811;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> $initGetIt({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final appModule = _$AppModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => appModule.sharedPreferences,
      preResolve: true,
    );
    await gh.factoryAsync<Map<_i566.CacheContainer, _i744.Box<dynamic>>>(
      () => appModule.hiveContainerBoxMap,
      preResolve: true,
    );
    gh.lazySingleton<_i128.GraphQLClient>(() => appModule.graphQLClient);
    gh.lazySingleton<_i558.FlutterSecureStorage>(() => appModule.secureStorage);
    gh.lazySingleton<_i623.DataHolder>(() => _i623.DataHolder());
    gh.lazySingleton<_i667.CacheStorageUtil>(
      () => _i667.CacheStorageUtilService(
        gh<Map<_i566.CacheContainer, _i979.Box<dynamic>>>(),
      ),
    );
    gh.lazySingleton<_i992.SecureStorage>(
      () => _i992.SecureStorageService(gh<_i558.FlutterSecureStorage>()),
    );
    gh.factory<_i885.ApiClient>(
      () => _i885.ApiClientImpl(gh<_i128.GraphQLClient>()),
    );
    gh.factory<_i812.SecureStorageInteractor>(
      () => _i812.SecureStorageInteractorImpl(gh<_i992.SecureStorage>()),
    );
    gh.lazySingleton<_i932.DashboardRepository>(
      () => _i932.DashboardRepositoryImpl(
        gh<_i885.ApiClient>(),
        gh<_i812.SecureStorageInteractor>(),
        gh<_i623.DataHolder>(),
      ),
    );
    gh.lazySingleton<_i499.AuthRepository>(
      () => _i499.AuthRepositoryImpl(
        gh<_i885.ApiClient>(),
        gh<_i812.SecureStorageInteractor>(),
        gh<_i623.DataHolder>(),
      ),
    );
    return this;
  }
}

class _$AppModule extends _i811.AppModule {}

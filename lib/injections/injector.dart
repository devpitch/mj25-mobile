// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:get_it/get_it.dart';
// import 'package:graphql_flutter/graphql_flutter.dart';
// import 'package:hive_flutter/adapters.dart';
// import 'package:injectable/injectable.dart';
// import 'package:event_handler/cores/cache/cache_container.dart';
// import 'package:event_handler/cores/cache/secure_storage_interactor.dart';
// import 'package:event_handler/cores/network/client/create_graphql_client.dart';
// import 'package:event_handler/cores/network/models/DataHolder.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// import 'injector.config.dart';
//
// final getIt = GetIt.instance;
//
// @InjectableInit(
//   initializerName:
//       r'$initGetIt', // the default method name that will be generated
//   preferRelativeImports: true, // default
// )
// Future<void> configureDependencies() async => getIt.$initGetIt();
//
// @module
// abstract class AppModule {
//   @lazySingleton
//   GraphQLClient get graphQLClient => createGraphQLClient(
//     dataHolder: getIt<DataHolder>(),
//     secureStorageInteractor: getIt<SecureStorageInteractor>(),
//   );
//
//   @preResolve
//   Future<SharedPreferences> get sharedPreferences =>
//       SharedPreferences.getInstance();
//
//   @lazySingleton
//   FlutterSecureStorage get secureStorage =>
//       const FlutterSecureStorage(aOptions: AndroidOptions(resetOnError: true));
//
//   @preResolve
//   Future<Map<CacheContainer, Box>> get hiveContainerBoxMap =>
//       HiveContainerBoxMapFactory.make();
// }

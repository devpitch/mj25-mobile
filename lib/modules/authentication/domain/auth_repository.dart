import 'dart:convert';
import 'dart:developer';

import 'package:event_handler/cores/cache/secure_storage_interactor.dart';
import 'package:event_handler/cores/error_handling/handle_query_result.dart';
import 'package:event_handler/cores/network/client/api_client.dart';
import 'package:event_handler/cores/network/client/graphql/__generated/mutation.graphql.dart';
import 'package:event_handler/cores/network/client/graphql/__generated/query.graphql.dart';
import 'package:event_handler/cores/network/models/DataHolder.dart';
import 'package:event_handler/cores/utils/helper_functions.dart';
import 'package:event_handler/modules/authentication/models/request/login_request_model.dart';
import 'package:event_handler/modules/authentication/models/responses/login_response.dart';
import 'package:injectable/injectable.dart';

abstract class AuthRepository {
  Future<LoginResponse?> login({required LoginRequestModel request});

  Future getMe();
  // Future<UploadUrlResponse?> getSelfieUploadUrl();
}

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(
    this._client,
    this._secureStorageInteractor,
    this._dataHolder,
  );

  final ApiClient _client;
  final SecureStorageInteractor _secureStorageInteractor;
  final DataHolder _dataHolder;

  @override
  Future<LoginResponse?> login({required LoginRequestModel request}) async {
    final response = await handleQueryResult(
      queryBuilder: () => _client.client.mutate$login(
        Options$Mutation$login(variables: request.toVariables),
      ),
    );

    log(
      ":::This is from the login response ::: ${jsonEncode(response.parsedData?.toJson()['login'])}",
    );
    final data = response.parsedData?.toJson()['login'] != null
        ? LoginResponse.fromJson(response.parsedData?.toJson()['login'])
        : null;

    if (data != null) {
      _saveSessionData(data);
    }

    return data;
  }

  @override
  Future getMe() async {
    final response = await handleQueryResult(
      queryBuilder: () => _client.client.query$me(),
    );

    log(
      "::::Response from the app user's info:::: ${response.parsedData?.toJson()}",
    );

    if (response.parsedData?.toJson() != null) {
      // UserResponse userInfo = UserResponse.fromJson(
      //   response.parsedData?.toJson()['me'],
      // );

      // _secureStorageInteractor.saveUser(userInfo);
      // return userInfo;
    }

    return null;
  }

  // @override
  // Future<UploadUrlResponse?> getSelfieUploadUrl() async {
  //   final response = await handleQueryResult(
  //     queryBuilder: () => _client.client.query$getSelfieUploadUrl(),
  //   );
  //
  //   log(
  //     "::::Response from the get selfie Upload:::: ${response.parsedData?.toJson()}",
  //   );
  //
  //   if (response.parsedData?.toJson() != null) {
  //     return UploadUrlResponse.fromJson(
  //       response.parsedData?.toJson()['getSelfieUploadUrl'],
  //     );
  //   }
  //
  //   return null;
  // }

  void _saveSessionData(LoginResponse loginResponse) {
    _secureStorageInteractor.saveRefreshToken(
      loginResponse.refreshToken!.token!,
    );
    _secureStorageInteractor.saveToken(loginResponse.accessToken!.token!);
    _secureStorageInteractor.saveUser(loginResponse.user!);

    _dataHolder.token = loginResponse.accessToken!.token;
    _dataHolder.refreshToken = loginResponse.refreshToken!.token;
    _dataHolder.userId = loginResponse.user!.id;

    log(
      "::: The normal expiry date is ${loginResponse.accessToken!.expiresAt}",
    );
    final expiryDate = HelperFunctions.getDateTimeFromLoginExpiryDate(
      loginResponse.accessToken!.expiresAt!,
    );

    log("::: The expiry date is $expiryDate");

    if (expiryDate != null) {
      _secureStorageInteractor.saveSessionExpiryDate(expiryDate);
    }
  }
}

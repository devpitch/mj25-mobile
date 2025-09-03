import 'dart:developer';

import 'package:event_handler/config/route/route_mapping.dart';
import 'package:event_handler/cores/cache/secure_storage_interactor.dart';
import 'package:event_handler/cores/providers/text_controllers.dart';
import 'package:event_handler/cores/utils/helper_functions.dart';
import 'package:event_handler/cores/utils/rydmie_alerts.dart';
import 'package:event_handler/cores/utils/text_controller_strings.dart';
import 'package:event_handler/injections/injector.dart';
import 'package:event_handler/modules/authentication/models/request/login_request_model.dart';
import 'package:event_handler/modules/authentication/models/responses/login_response.dart';
import 'package:event_handler/modules/authentication/service/auth_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthService _service;
  AuthNotifier(this._service) : super(AuthState());

  void navigateUser(BuildContext context) async {
    final secureStorageInteractor = getIt<SecureStorageInteractor>();
    final sessionExpiryDate =
        await secureStorageInteractor.savedSessionExpiryDate;
    // final userEmail = await secureStorageInteractor.savedUser;
    final user = await secureStorageInteractor.savedUser;

    if (user == null) {
      Get.toNamed(AppRouter.loginPage);
    }

    if (sessionExpiryDate != null &&
        HelperFunctions.checkIfDateIsInTheFuture(sessionExpiryDate)) {
      getMe();
      return Get.toNamed(AppRouter.dashboardView);
    }

    return Get.toNamed(AppRouter.loginPage);
  }

  login(BuildContext context) async {
    try {
      state = state.copyWith(isLoading: true);

      String number = getTextController(
        TextControllerStrings.phoneNumber,
      )!.text.trim();
      String password = getTextController(
        TextControllerStrings.password,
      )!.text.trim();

      if (number.isEmpty || password.isEmpty) {
        RydmieAlert.showWarning(context, message: "Please fill in all fields");
        return;
      }

      LoginRequestModel request = LoginRequestModel(
        phone: number,
        password: password,
      );

      final response = await _service.login(request);

      if (response != null) {
        Get.toNamed(AppRouter.dashboardView);
        RydmieAlert.showSuccess(context, message: "Login Successful");
        getMe();
      }
    } catch (e) {
      log("There is an error from the login flow::: e");
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  getMe() async {
    try {
      final response = await _service.getMe();

      if (response != null) {
        state = state.copyWith(userInfo: response);
      }
    } catch (e) {
      log("There is an error from the login flow::: e");
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }
}

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (_) => AuthNotifier(AuthService(getIt())),
);

class AuthState {
  final bool? isLoading;
  final UserResponse? userInfo;

  AuthState({this.isLoading, this.userInfo});

  AuthState copyWith({bool? isLoading, UserResponse? userInfo}) {
    return AuthState(
      isLoading: isLoading ?? this.isLoading,
      userInfo: userInfo ?? this.userInfo,
    );
  }
}

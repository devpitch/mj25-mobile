import 'package:event_handler/config/route/route_mapping.dart';
import 'package:event_handler/modules/authentication/service/auth_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthService _service;
  AuthNotifier(this._service) : super(AuthState());

  void navigateUser(BuildContext context) async {
    await Future.delayed(const Duration(milliseconds: 1200));
    Get.toNamed(AppRouter.loginPage);
  }
}

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (_) => AuthNotifier(AuthService()),
);

class AuthState {
  final bool? isLoading;

  AuthState({this.isLoading});

  AuthState copyWith({bool? isLoading}) {
    return AuthState(isLoading: isLoading ?? this.isLoading);
  }
}

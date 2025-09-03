import 'dart:developer';

import 'package:event_handler/modules/authentication/domain/auth_repository.dart';
import 'package:event_handler/modules/authentication/models/request/login_request_model.dart';
import 'package:event_handler/modules/authentication/models/responses/login_response.dart';

class AuthService {
  final AuthRepository _repo;

  AuthService(this._repo);

  login(LoginRequestModel request) async {
    try {
      return await _repo.login(request: request);
    } catch (e) {
      log(":::: There is an error in login flow ::: $e");
    }
  }

  Future<UserResponse?> getMe() async {
    try {
      return await _repo.getMe();
    } catch (e) {
      log(":::: There is an error in getMe flow ::: $e");
      return null;
    }
  }
}

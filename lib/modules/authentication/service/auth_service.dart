import 'dart:developer';

import 'package:event_handler/modules/authentication/domain/auth_repository.dart';
import 'package:event_handler/modules/authentication/models/request/login_request_model.dart';

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
}

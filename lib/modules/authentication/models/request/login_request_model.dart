import 'package:event_handler/cores/network/client/graphql/__generated/mutation.graphql.dart';
import 'package:event_handler/cores/network/client/graphql/__generated/schema.graphql.dart';

class LoginRequestModel {
  final String phone;
  final String password;
  LoginRequestModel({required this.phone, required this.password});

  Map<String, dynamic> toJson() {
    return {'phone': phone, 'password': password};
  }

  Variables$Mutation$login get toVariables {
    return Variables$Mutation$login(input: Input$LoginInput.fromJson(toJson()));
  }
}

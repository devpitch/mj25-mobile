import 'package:event_handler/cores/network/client/graphql/enums/user_type_enum.dart';

class LoginResponse {
  final UserResponse? user;
  final TokenResponse? accessToken;
  final TokenResponse? refreshToken;
  final String? typename;

  LoginResponse({
    this.user,
    this.accessToken,
    this.refreshToken,
    this.typename,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      user: json['user'] != null ? UserResponse.fromJson(json['user']) : null,
      accessToken: json['accessToken'] != null
          ? TokenResponse.fromJson(json['accessToken'])
          : null,
      refreshToken: json['refreshToken'] != null
          ? TokenResponse.fromJson(json['refreshToken'])
          : null,
      typename: json['__typename'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user': user?.toJson(),
      'accessToken': accessToken?.toJson(),
      'refreshToken': refreshToken?.toJson(),
      '__typename': typename,
    };
  }
}

class UserResponse {
  final String? id;
  final String? phone;
  final String? firstName;
  final String? lastName;
  final String? email;
  final UserTypeEnum? type;
  final String? createdAt;
  final String? updatedAt;
  final String? typename;

  UserResponse({
    this.id,
    this.phone,
    this.firstName,
    this.lastName,
    this.email,
    this.type,
    this.createdAt,
    this.updatedAt,
    this.typename,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) {
    return UserResponse(
      id: json['_id'] as String?,
      phone: json['phone'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      type: json['type'] != null ? userTypeEnumFromJson(json['type']) : null,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      typename: json['__typename'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id': id,
      'phone': phone,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'type': userTypeEnumToJson(type),
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      '__typename': typename,
    };
  }
}

class TokenResponse {
  final String? token;
  final String? expiresAt;
  final String? typename;

  TokenResponse({this.token, this.expiresAt, this.typename});

  factory TokenResponse.fromJson(Map<String, dynamic> json) {
    return TokenResponse(
      token: json['token'] as String?,
      expiresAt: json['expiresAt'] as String?,
      typename: json['__typename'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {'token': token, 'expiresAt': expiresAt, '__typename': typename};
  }
}

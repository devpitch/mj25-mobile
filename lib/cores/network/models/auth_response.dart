class AuthResponse {
  final TokenResponse accessToken;
  final TokenResponse refreshToken;

  AuthResponse({required this.accessToken, required this.refreshToken});

  factory AuthResponse.fromJson(Map<String, dynamic> json) {
    return AuthResponse(
      accessToken: TokenResponse.fromJson(json['accessToken']),
      refreshToken: TokenResponse.fromJson(json['refreshToken']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'accessToken': accessToken.toJson(),
      'refreshToken': refreshToken.toJson(),
    };
  }
}

class TokenResponse {
  TokenResponse({required this.token, required this.expiresAt});

  final String token;
  final String expiresAt;

  factory TokenResponse.fromJson(Map<String, dynamic> json) {
    return TokenResponse(token: json['token'], expiresAt: json['expiresAt']);
  }

  Map<String, dynamic> toJson() {
    return {'token': token, 'expiresAt': expiresAt};
  }
}

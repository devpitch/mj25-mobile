class OkayResponse {
  OkayResponse({
    required this.message,
  });

  final String message;

  factory OkayResponse.fromJson(Map<String, dynamic> json) {
    return OkayResponse(
      message: json['message'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
    };
  }
}
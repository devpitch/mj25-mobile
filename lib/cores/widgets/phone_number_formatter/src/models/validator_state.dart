import '../../intl_phone_number_input.dart';

class PhoneVerifyState {
  final bool isNumberVerified;
  final PhoneNumber? phoneInfo;
  final String? passwordValid;

  PhoneVerifyState({
    required this.isNumberVerified,
    required this.phoneInfo,
    required this.passwordValid,
  });

  PhoneVerifyState copyWith({
    bool? isNumberVerified,
    String? passwordValid,
    PhoneNumber? phoneInfo,
  }) {
    return PhoneVerifyState(
      isNumberVerified: isNumberVerified ?? this.isNumberVerified,
      phoneInfo: phoneInfo ?? this.phoneInfo,
      passwordValid: passwordValid ?? this.passwordValid,
    );
  }
}

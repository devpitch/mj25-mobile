import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/validator_state.dart';
import '../utils/phone_number.dart';

class PhoneVerificationNotifier extends StateNotifier<PhoneVerifyState> {
  Ref ref;

  PhoneVerificationNotifier(this.ref)
    : super(
        PhoneVerifyState(
          isNumberVerified: true,
          phoneInfo: null,
          passwordValid: null,
        ),
      );

  void updateNumberValidation(bool haveError, PhoneNumber info) {
    state = state.copyWith(isNumberVerified: !haveError, phoneInfo: info);
  }
}

final phoneVerificationProvider =
    StateNotifierProvider<PhoneVerificationNotifier, PhoneVerifyState>((ref) {
      return PhoneVerificationNotifier(
        ref,
      ); // Inject the service into the notifier
    });

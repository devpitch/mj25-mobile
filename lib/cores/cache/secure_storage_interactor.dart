import 'package:event_handler/cores/cache/secure_storage.dart';
import 'package:injectable/injectable.dart';
// import 'package:event_handler/cores/cache/secure_storage.dart';

abstract class SecureStorageInteractor {
  Future<String?> get token;

  Future<String?> get refreshToken;

  Future<void> saveToken(String token);

  Future<DateTime?> get savedSessionExpiryDate;

  Future<void> saveSessionExpiryDate(DateTime date);

  Future<void> onLogout();

  Future<void> saveRefreshToken(String token);
}

@Injectable(as: SecureStorageInteractor)
class SecureStorageInteractorImpl implements SecureStorageInteractor {
  SecureStorageInteractorImpl(this._secureStorage);

  final SecureStorage _secureStorage;

  @override
  Future<String?> get token =>
      _secureStorage.read(key: _SecureStorageKeys.token);

  @override
  Future<String?> get refreshToken =>
      _secureStorage.read(key: _SecureStorageKeys.refreshToken);

  @override
  Future<void> saveToken(String accessToken) async {
    await _secureStorage.write(
      key: _SecureStorageKeys.token,
      value: accessToken,
    );
  }

  @override
  Future<DateTime?> get savedSessionExpiryDate async {
    final date = await _secureStorage.read(
      key: _SecureStorageKeys.sessionExpiryDate,
    );
    if (date == null) return null;
    return DateTime.parse(date);
  }

  @override
  Future<void> saveSessionExpiryDate(DateTime date) async {
    final savedDate = date.toIso8601String();

    await _secureStorage.write(
      key: _SecureStorageKeys.sessionExpiryDate,
      value: savedDate,
    );
  }

  @override
  Future<void> saveRefreshToken(String token) async {
    await _secureStorage.write(
      key: _SecureStorageKeys.refreshToken,
      value: token,
    );
  }

  @override
  Future<void> onLogout() async {
    //clear user
    await _secureStorage.delete(key: _SecureStorageKeys.user);

    //clear token
    await _secureStorage.delete(key: _SecureStorageKeys.token);

    //clear refresh token
    await _secureStorage.delete(key: _SecureStorageKeys.refreshToken);

    //clear expiry date
    await _secureStorage.delete(key: _SecureStorageKeys.sessionExpiryDate);
  }
}

class _SecureStorageKeys {
  _SecureStorageKeys._();

  static const user = 'user';
  static const token = 'token';
  static const phone = 'phone';
  static const refreshToken = 'refreshToken';
  static const sessionExpiryDate = 'sessionExpiryDate';
}

class SharedPrefsKeys {
  SharedPrefsKeys._();

  static const introPlayed = 'introPlayed';
}

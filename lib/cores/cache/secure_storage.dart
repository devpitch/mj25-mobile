import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

abstract class SecureStorage {
  /// Encrypts and saves the [key] with the given [value].
  Future<void> write({
    required String key,
    required String? value,
  });

  /// Decrypts and returns the value for the given [key] or null if [key] is not in the storage.
  Future<String?> read({required String key});

  /// Returns true if the storage contains the given [key].
  Future<bool> containsKey({required String key});

  /// Deletes associated value for the given [key].
  Future<void> delete({required String key});

  /// Decrypts and returns all keys with associated values.
  Future<Map<String, String>> readAll();

  /// Deletes all keys with associated values.
  Future<void> deleteAll();
}

@LazySingleton(as: SecureStorage)
class SecureStorageService implements SecureStorage {
  SecureStorageService(this._secureStorage);

  final FlutterSecureStorage _secureStorage;


  @override
  Future<bool> containsKey({required String key}) =>
      _secureStorage.containsKey(key: key);

  @override
  Future<void> delete({required String key}) => _secureStorage.delete(key: key);

  @override
  Future<void> deleteAll() => _secureStorage.deleteAll();

  @override
  Future<String?> read({required String key}) => _secureStorage.read(key: key);

  @override
  Future<Map<String, String>> readAll() => _secureStorage.readAll();

  @override
  Future<void> write({required String key, required String? value}) =>
      _secureStorage.write(key: key, value: value);

}

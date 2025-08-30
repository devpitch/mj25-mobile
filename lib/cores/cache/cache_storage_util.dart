import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import 'cache_container.dart';

abstract class CacheStorageUtil {
  /// Adds a map to the container
  Future<void> addValue(CacheContainer container, Map<String, dynamic> map);

  /// Reads a map from the container,
  /// and passes it as parameter to the [transformValues] function
  T getValues<T>(
    CacheContainer container,
    // T Function(Iterable<dynamic>) transformValues,
    T Function(Iterable<dynamic>) transformValues,
  );

  /// Reads all values from container,
  /// and passes them as parameter to the [shouldDelete] function
  /// If [shouldDelete] returns true, the value is deleted
  Future<void> clearValues(
    CacheContainer container,
    bool Function(Map<String, dynamic>) shouldDelete,
  );
}

@LazySingleton(as: CacheStorageUtil)
class CacheStorageUtilService implements CacheStorageUtil {
  CacheStorageUtilService(this._boxes);

  final Map<CacheContainer, Box> _boxes;

  @override
  Future<void> addValue(
    CacheContainer container,
    Map<String, dynamic> value,
  ) async {
    final box = _boxes[container]!;
    await box.add(value);
  }

  @override
  Future<void> clearValues(
    CacheContainer container,
    bool Function(Map<String, dynamic> p1) shouldDelete,
  ) async {
    final box = _boxes[container]!;
    for (final key in box.keys) {
      final map = box.get(key);
      if (map is! Map) {
        await box.delete(key);
        continue;
      }
      if (shouldDelete(Map.from(map))) await box.delete(key);
    }
  }

  @override
  T getValues<T>(
    CacheContainer container,
    T Function(Iterable p1) transformValues,
  ) {
    final box = _boxes[container]!;
    return transformValues(box.values);
  }
}

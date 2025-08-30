import 'package:hooks_riverpod/hooks_riverpod.dart';

class CacheNotifier<K, T> extends StateNotifier<Map<Type, List<T>?>> {
  CacheNotifier() : super({});

  void updateCache(Type type, List<T> items) {
    print('Updating cache for type: $type');
    state = {
      ...state,
      type: items,
    };
  }

  List<T>? getCachedData(Type type) {
    final items = state[type];
    print('Retrieved cache for type: $type : $items');
    return items;
  }

  void clearCache() {
    print('Clearing all cache');
    state = {};
  }
}

// Function to create a provider for generic caching
StateNotifierProvider<CacheNotifier<K, T>, Map<Type, List<T>?>> createCacheProvider<K, T>() {
  return StateNotifierProvider<CacheNotifier<K, T>, Map<Type, List<T>?>>(
    (ref) => CacheNotifier<K, T>(),
  );
}
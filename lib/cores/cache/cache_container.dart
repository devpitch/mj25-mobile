import 'package:hive_flutter/hive_flutter.dart';

enum CacheContainer {
  exploreCache;

  String get value {
    switch (this) {
      case CacheContainer.exploreCache:
        return 'exploreCacheBox';
    }
  }
}

class HiveContainerBoxMapFactory {
  static Future<Map<CacheContainer, Box>> make() async {
    await Hive.initFlutter();

    final boxes = <CacheContainer, Box<dynamic>>{};
    for (final container in CacheContainer.values) {
      boxes[container] = await Hive.openBox(container.value);
    }
    return boxes;
  }
}

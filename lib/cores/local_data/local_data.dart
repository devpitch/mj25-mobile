import 'dart:async';

import 'package:get_storage/get_storage.dart';
import 'local_data_exporter.dart';

class LocalDataHandler {
  static late GetStorage appStorage;
  static List<String> excludedKeys = [LocalDataString.appThemeName];

  static Future<void> init() async {
    await GetStorage.init();
    appStorage = GetStorage();
  }

  static storeData({required String itemKey, required dynamic data}) async {
    if (appStorage.read(itemKey) != null) {
      await appStorage.remove(itemKey);
    }
    await appStorage.write(itemKey, data);
    _saveKey(itemKey: itemKey);
  }

  static dynamic fetchData({required String itemKey}) {
    return appStorage.read(itemKey);
  }

  static deleteData({required String itemKey}) async {
    await appStorage.remove(itemKey);
    _saveKey(itemKey: itemKey, toRemove: true);
  }

  static void _saveKey({required String itemKey, bool toRemove = false}) {
    final savedKeys =
        fetchData(itemKey: LocalDataString.savedKeys) ?? <String>[];

    if (toRemove) {
      if (savedKeys.remove(itemKey)) {
        storeData(itemKey: LocalDataString.savedKeys, data: savedKeys);
      }
      return;
    }

    if (savedKeys.contains(itemKey)) return;

    savedKeys.add(itemKey);
    storeData(itemKey: LocalDataString.savedKeys, data: savedKeys);
  }
}

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final connectivityProvider = ChangeNotifierProvider.autoDispose(
  (ref) => ConnectivityNotifier(),
);

class ConnectivityNotifier extends ChangeNotifier {
  ConnectivityNotifier() {
    Connectivity().onConnectivityChanged.listen((List<ConnectivityResult> result) {
      if (_firstRun) {
        // first run on iOS always returns ConnectivityResult.none,
        // even if the device has connection, so we ignore it
        _firstRun = false;
        return;
      }

      if (result.first != ConnectivityResult.none && !_hasConnection) {
        _hasConnection = true;
        notifyListeners();
        _updateBannerDisplay();
      } else if (result.first == ConnectivityResult.none && _hasConnection) {
        _hasConnection = false;
        _showBanner = true;
        notifyListeners();
      }
    });
  }

  bool _firstRun = true;

  bool _showBanner = false;
  bool get showBanner => _showBanner;

  bool _hasConnection = true;
  bool get hasConnection => _hasConnection;

  void _updateBannerDisplay() async {
    await Future.delayed(
      const Duration(seconds: 2),
    );
    _showBanner = false;
    notifyListeners();
  }
}

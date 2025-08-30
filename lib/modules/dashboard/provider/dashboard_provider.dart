import 'package:hooks_riverpod/hooks_riverpod.dart';

class DashboardNotifier extends StateNotifier<DashboardState> {
  DashboardNotifier() : super(DashboardState());

  updateState(Map<String, dynamic> data) {
    state = state.copyWith(activeTab: data["activeTab"]);
  }
}

final dashboardProvider = StateNotifierProvider((_) => DashboardNotifier());

class DashboardState {
  final String activeTab;

  DashboardState({this.activeTab = "Links"});

  DashboardState copyWith({String? activeTab}) {
    return DashboardState(activeTab: activeTab ?? this.activeTab);
  }
}

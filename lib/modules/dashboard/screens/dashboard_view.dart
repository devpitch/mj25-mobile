import 'package:event_handler/cores/utils/constants.dart';
import 'package:event_handler/cores/utils/extensions.dart';
import 'package:event_handler/cores/utils/hex_color.dart';
import 'package:event_handler/cores/widgets/app_footer_box.dart';
import 'package:event_handler/cores/widgets/custom_text.dart';
import 'package:event_handler/modules/dashboard/provider/dashboard_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../widgets/dashboard_widgets_exporter.dart';

final Map<String, Widget> viewMapper = {
  "Links": Container(color: Colors.red),
  "Guests": GuestListBuilder(),
  "Upload": Container(color: Colors.green),
};

class DashboardView extends ConsumerWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(dashboardProvider);

    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: "${state.activeTab} Management",
          size: 18,
          weight: FontWeight.w700,
          color: HexColor("#171712"),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      bottomSheet: AppFooterBox(bottomPadding: 10, child: AppBottomNavBox()),
      body: Container(
        height: context.deviceHeight,
        width: context.deviceWidth,
        padding: EdgeInsets.symmetric(
          horizontal: AppConstants.pageHorizontalPadding,
        ),
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 400),
          transitionBuilder: (child, animation) {
            return FadeTransition(
              opacity: animation,
              child: ScaleTransition(
                scale: Tween<double>(begin: 0.95, end: 1.0).animate(animation),
                child: child,
              ),
            );
          },
          child: KeyedSubtree(
            key: ValueKey(state.activeTab),
            child: viewMapper[state.activeTab]!,
          ),
        ),
      ),
    );
  }
}

///
///
///
// class DashboardView extends ConsumerWidget {
//   const DashboardView({super.key});
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final state = ref.watch(dashboardProvider);
//     return Scaffold(
//       appBar: AppBar(
//         title: CustomText(
//           text: "Guests Management",
//           size: 18,
//           weight: FontWeight.w700,
//           color: HexColor("#171712"),
//         ),
//         centerTitle: true,
//         automaticallyImplyLeading: false,
//       ),
//       bottomSheet: AppFooterBox(bottomPadding: 10, child: AppBottomNavBox()),
//       body: Container(
//         height: context.deviceHeight,
//         width: context.deviceWidth,
//         padding: EdgeInsets.symmetric(
//           horizontal: AppConstants.pageHorizontalPadding,
//         ),
//         child: viewMapper[state.activeTab],
//       ),
//     );
//   }
// }

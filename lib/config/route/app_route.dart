import 'package:event_handler/modules/authentication/screens/landing_page.dart';
import 'package:event_handler/modules/authentication/screens/splash_screen.dart';
import 'package:get/get.dart';

import 'route_mapping.dart';

List<GetPage> appRouters() {
  return [
    GetPage(
      name: AppRouter.initial,
      page: () => SplashScreen(),
      transition: Transition.fadeIn,
      transitionDuration: Duration(milliseconds: 300),
    ),
    GetPage(
      name: AppRouter.landingPage,
      page: () => LandingPage(),
      transition: Transition.fadeIn,
      transitionDuration: Duration(milliseconds: 300),
    ),
  ];
}

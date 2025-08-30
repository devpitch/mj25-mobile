import 'package:get/get.dart';

import '../../modules/authentication/screens/auth_screens_exporter.dart';
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
    GetPage(
      name: AppRouter.loginPage,
      page: () => LoginScreen(),
      transition: Transition.fadeIn,
      transitionDuration: Duration(milliseconds: 300),
    ),
  ];
}

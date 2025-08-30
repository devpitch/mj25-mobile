import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'config/route/app_route.dart';
import 'config/route/route_mapping.dart';
import 'config/theme/app_theme.dart';
import 'config/theme/theme_provider.dart';
import 'cores/local_data/local_data.dart';
import 'cores/utils/config_reader.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ConfigReader.initialize();
  await LocalDataHandler.init();
  // await HelperFunctions.createDirectories();

  runApp(MyAppWrapper());
}

class MyAppWrapper extends StatefulWidget {
  @override
  State<MyAppWrapper> createState() => _MyAppWrapperState();

  /// Call this from anywhere to restart the app (e.g., after logout)
  static void restartApp(BuildContext context) {
    final state = context.findAncestorStateOfType<_MyAppWrapperState>();
    state?.restart();
  }
}

class _MyAppWrapperState extends State<MyAppWrapper> {
  late ProviderContainer _container;

  @override
  void initState() {
    super.initState();
    _container = ProviderContainer();
  }

  void restart() {
    setState(() {
      _container.dispose(); // 🔥 kill all providers
      _container = ProviderContainer(); // 🔄 fresh scope
    });
  }

  @override
  void dispose() {
    _container.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return UncontrolledProviderScope(
      container: _container,
      child: const MyApp(),
    );
  }
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    genRef = ref;
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      builder: (context, child) {
        return GetMaterialApp(
          title: 'Courier App',
          navigatorObservers: [RouteObserver()],
          debugShowCheckedModeBanner: false,
          getPages: appRouters(),
          initialRoute: AppRouter.initial,
          theme: MyAppThemes.lightTheme,
          darkTheme: MyAppThemes.darkTheme,
          themeMode: ref.watch(appThemeProvider),
        );
      },
    );
  }
}

WidgetRef? genRef;

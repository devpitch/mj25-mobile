import 'package:event_handler/config/theme/app_theme.dart';
import 'package:event_handler/cores/providers/text_controllers.dart';
import 'package:event_handler/cores/utils/assets_mangment.dart';
import 'package:event_handler/cores/utils/constants.dart';
import 'package:event_handler/cores/utils/extensions.dart';
import 'package:event_handler/cores/utils/icon_builder.dart';
import 'package:event_handler/modules/authentication/provider/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SplashScreen extends HookConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      Future.microtask(() {
        ref.read(textControllersProvider.notifier).initializeStartups();
        ref.read(authProvider.notifier).navigateUser(context);
      });
      return null;
    }, []);

    return Scaffold(
      backgroundColor: context.backgroundColor,
      body: Container(
        color: context.backgroundSecondary,
        padding: EdgeInsets.symmetric(
          horizontal: AppConstants.pageHorizontalPadding,
        ),
        height: context.deviceHeight,
        width: context.deviceWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [IconBuilder(iconPath: AppImage.symbol, size: 173)],
        ),
      ),
    );
  }
}

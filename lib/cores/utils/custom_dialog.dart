import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

showCustomDialog(
  BuildContext context, {
  required Widget child,
  bool allowDismissal = true,
  Function(bool, dynamic)? onPopAction,
}) async {
  await showGeneralDialog(
    barrierColor: const Color(0xff858585).withValues(alpha: 0.1),
    transitionBuilder: (
      buildContext,
      a1,
      a2,
      widget,
    ) {
      return ScaleTransition(
        scale: CurvedAnimation(
          parent: a1,
          curve: Curves.linearToEaseOut,
        ),
        child: CustomDialogParentBox(
          allowDismissal: allowDismissal,
          child: child,
        ),
      );
    },
    transitionDuration: const Duration(
      milliseconds: 600,
    ),
    barrierDismissible: allowDismissal,
    barrierLabel: '',
    context: context,
    useRootNavigator: false,
    pageBuilder: (context, animation1, animation2) => Container(),
  );
}

class CustomDialogParentBox extends StatelessWidget {
  final Widget child;
  final bool allowDismissal;
  const CustomDialogParentBox({
    super.key,
    required this.child,
    required this.allowDismissal,
  });

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: GestureDetector(
          onTap: () {
            if (allowDismissal) {
              Get.back();
            }
          },
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 5.0,
              sigmaY: 5.0,
            ),
            child: Container(
              color: Colors.transparent,
              height: deviceSize.height,
              width: deviceSize.width,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    child,
                  ]),
            ),
          ),
        ));
  }
}

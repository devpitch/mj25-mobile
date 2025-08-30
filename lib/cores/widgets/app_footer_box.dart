import 'package:event_handler/config/theme/app_theme.dart';
import 'package:event_handler/cores/utils/constants.dart';
import 'package:event_handler/cores/widgets/rydmie_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppFooterBox extends StatelessWidget {
  final String? buttonText;
  final Function()? onTapped;
  final Widget? child;
  const AppFooterBox({super.key, this.buttonText, this.onTapped, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.backgroundColor,
      padding: EdgeInsets.symmetric(
        horizontal: AppConstants.pageHorizontalPadding,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (child != null) child!,
          if (buttonText != null)
            RydmieButton(
              width: double.infinity,
              text: buttonText!,
              onClick: onTapped,
            ),
          40.verticalSpace,
        ],
      ),
    );
  }
}

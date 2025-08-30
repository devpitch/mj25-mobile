import 'package:event_handler/config/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';

Widget itemLoader(BuildContext context, {Color? color}) {
  return CupertinoActivityIndicator(color: color ?? context.contentPrimary);
}

import 'package:event_handler/config/theme/app_theme.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppExpandable extends StatelessWidget {
  const AppExpandable({
    super.key,
    required this.headerTitle,
    this.headerTextStyle,
    this.expandedIcon,
    this.collapsedIcon,
    required this.children,
    this.isExpanded = false,
  });

  final String headerTitle;
  final TextStyle? headerTextStyle;
  final Widget? expandedIcon;
  final Widget? collapsedIcon;
  final List<Widget> children;
  final bool? isExpanded;

  @override
  Widget build(BuildContext context) {
    final expandIcon =
        expandedIcon ?? Icon(Icons.add, color: context.contentTertiary);
    final collapseIcon =
        collapsedIcon ?? Icon(Icons.remove, color: context.contentTertiary);
    final headerText = Text(
      headerTitle,
      style: headerTextStyle ?? TextStyle(color: context.contentTertiary),
    );

    return ExpandableNotifier(
      child: Expandable(
        collapsed: ExpandableButton(
          child: Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: context.contentSecondary.withValues(alpha: .2),
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [headerText, expandIcon],
            ),
          ),
        ),
        expanded: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Divider(),
            ExpandableButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [headerText, collapseIcon],
              ),
            ),
            Divider(),
            const SizedBox(height: 8),
            ...children,
          ],
        ),
      ),
    );
  }
}

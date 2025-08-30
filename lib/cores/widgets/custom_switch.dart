import 'package:event_handler/config/theme/app_theme.dart';
import 'package:event_handler/cores/utils/hex_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/utils.dart';

class CustomSwitch extends HookWidget {
  final bool initialState;
  final Function(bool) onChange;
  final bool disableButton;
  final Color? activeColor;
  final Color? inactiveColor;
  final Color? knobColor;
  final double height;
  final double width;

  const CustomSwitch({
    super.key,
    required this.onChange,
    required this.initialState,
    this.disableButton = false,
    this.activeColor,
    this.inactiveColor,
    this.knobColor,
    this.height = 31,
    this.width = 51,
  });

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> currentSwitchState = useState(initialState);

    return GestureDetector(
      onTap:
          !disableButton
              ? () {
                currentSwitchState.value = !currentSwitchState.value;
                onChange(currentSwitchState.value);
              }
              : null,
      child: Semantics(
        toggled: currentSwitchState.value,
        label: "Custom Switch",
        child: Container(
          height: height,
          width: width,
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color:
                currentSwitchState.value
                    ? (activeColor ?? (context.contentPositive))
                    : (inactiveColor ??
                        (context.isDarkMode
                            ? HexColor("#303233")
                            : context.contentTertiary.withValues(alpha: .16))),
          ),
          child: Row(
            mainAxisAlignment:
                currentSwitchState.value
                    ? MainAxisAlignment.end
                    : MainAxisAlignment.start,
            children: [
              Container(
                height: 27, // Adjusting for padding
                width: 27, // Knob should be circular
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: knobColor ?? context.backgroundColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:event_handler/cores/utils/text_controller_strings.dart';
import 'package:event_handler/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

TextEditingController? getTextController(key) =>
    genRef!.read(textControllersProvider.notifier).getTextController(key);

class TextControllersNotifier
    extends StateNotifier<Map<String, TextEditingController>> {
  TextControllersNotifier() : super({});

  initializeTextController(List<String> controllerNames) {
    for (final controllerName in controllerNames) {
      if (!state.containsKey(controllerName)) {
        state = {...state, controllerName: TextEditingController()};
      }
    }
  }

  TextEditingController getTextController(String controllerName) {
    if (!state.containsKey(controllerName)) {
      initializeTextController([controllerName]);
    }
    return state[controllerName]!;
  }

  bool removeController(String controllerName) {
    if (state.containsKey(controllerName)) {
      state.remove(controllerName);
      return true;
    }
    return false;
  }

  @override
  void dispose() {
    for (final controller in state.values) {
      controller.dispose();
    }
    super.dispose();
  }

  void clearControllers(List<String> textControllers) {
    for (final controllerName in textControllers) {
      if (state.containsKey(controllerName)) {
        state[controllerName]!.clear();
      }
    }
  }

  void initializeStartups() {
    initializeTextController([
      TextControllerStrings.phoneNumber,
      TextControllerStrings.otp,
      TextControllerStrings.password,
    ]);
  }
}

final textControllersProvider =
    StateNotifierProvider<
      TextControllersNotifier,
      Map<String, TextEditingController>
    >((ref) => TextControllersNotifier());

import 'package:flutter/material.dart';

import 'link_text.dart';

@immutable
class BaseText {
  final String text;
  final TextStyle? style;

  const BaseText({
    required this.text,
    this.style,
  });

  factory BaseText.plain({
    required String text,
    TextStyle? style,
  }) =>
      BaseText(text: text, style: style);

  factory BaseText.link({
    required String text,
    required VoidCallback onTapped,
    TextStyle? style,
  }) =>
      LinkText(text: text, onTapped: onTapped, style: style);
}

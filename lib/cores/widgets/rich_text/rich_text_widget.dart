import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'base_text.dart';
import 'link_text.dart';

class RichTextWidget extends StatelessWidget {
  final Iterable<BaseText> texts;
  final TextStyle? styleForAll;
  final TextAlign alignment;
  final TextOverflow? textOverflow;
  const RichTextWidget({
    super.key,
    required this.texts,
    this.styleForAll,
    this.alignment = TextAlign.left,
    this.textOverflow,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: alignment,
      overflow: textOverflow ?? TextOverflow.clip,
      text: TextSpan(
        style: styleForAll,
        children: texts.map(
          (baseText) {
            if (baseText is LinkText) {
              return TextSpan(
                text: baseText.text,
                style: baseText.style,
                recognizer: TapGestureRecognizer()..onTap = () => baseText.onTapped(),
              );
            } else {
              return TextSpan(
                text: baseText.text,
                style: baseText.style,
              );
            }
          },
        ).toList(),
      ),
    );
  }
}

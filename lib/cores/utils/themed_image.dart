import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ThemedImage extends StatelessWidget {
  final String lightImage;
  final String darkImage;
  final double height;
  final Function()? onTapped;

  const ThemedImage({
    super.key,
    required this.lightImage,
    required this.darkImage,
    required this.height,
    this.onTapped,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.isDarkMode;
    return GestureDetector(
      onTap: onTapped,
      child:
          lightImage.endsWith(".svg")
              ? SvgPicture.asset(
                isDarkMode ? darkImage : lightImage,
                height: height,
              )
              : Image.asset(
                isDarkMode ? darkImage : lightImage,
                height: height,
              ),
    );
  }
}

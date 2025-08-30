import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RotatingImageLoader extends StatefulWidget {
  final String imagePath;
  final double size;
  final Color? iconColor;

  const RotatingImageLoader({
    super.key,
    required this.imagePath,
    this.size = 100,
    this.iconColor,
  });

  @override
  _RotatingImageLoaderState createState() => _RotatingImageLoaderState();
}

class _RotatingImageLoaderState extends State<RotatingImageLoader>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2), // Rotation duration
    )..repeat(); // Repeats the animation indefinitely
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _controller,
      child:
          widget.imagePath.endsWith(".svg")
              ? SvgPicture.asset(
                widget.imagePath,
                width: widget.size,
                height: widget.size,
                colorFilter:
                    widget.iconColor != null
                        ? ColorFilter.mode(widget.iconColor!, BlendMode.srcIn)
                        : null,
              )
              : Image.asset(
                widget.imagePath,
                width: widget.size,
                height: widget.size,
              ),
    );
  }
}

import 'package:event_handler/cores/utils/extensions.dart';
import 'package:event_handler/cores/widgets/sheet_header_row.dart';
import 'package:flutter/material.dart';

class AnimatedBottomSheet extends StatefulWidget {
  final Widget child;
  final double? height;
  final Color backgroundColor;
  final EdgeInsetsGeometry padding;
  final bool showDragHandle;
  final String? sheetTitle;
  final bool showCloseIcon;

  const AnimatedBottomSheet({
    super.key,
    required this.child,
    this.height,
    required this.backgroundColor,
    required this.padding,
    this.showDragHandle = true,
    this.showCloseIcon = false,
    this.sheetTitle,
  });

  @override
  State<AnimatedBottomSheet> createState() => _AnimatedBottomSheetState();
}

class _AnimatedBottomSheetState extends State<AnimatedBottomSheet>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Offset> _offsetAnimation;
  late final Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 450),
    );
    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0, 0.2),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic));
    _fadeAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    _controller.forward();
  }

  Future<void> close() async {
    await _controller.reverse();
    if (mounted) Navigator.of(context).pop();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        await close();
        return false;
      },
      child: SlideTransition(
        position: _offsetAnimation,
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: widget.height,
                    constraints: BoxConstraints(
                      maxHeight: context.deviceHeight * .85,
                    ),
                    margin: const EdgeInsets.only(top: 20),
                    padding: widget.padding,
                    decoration: BoxDecoration(
                      color: widget.backgroundColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                    ),
                    child: widget.child,
                  ),
                ],
              ),
              if (widget.showDragHandle)
                Positioned(
                  top: 0,
                  left: 12,
                  right: 12,
                  child: Container(
                    height: 20,
                    decoration: BoxDecoration(
                      color:
                          Theme.of(context).brightness == Brightness.dark
                              ? Colors.grey.shade800
                              : const Color(0xFFE0E0E0),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                ),
              if (widget.sheetTitle != null)
                Positioned(
                  top: 20,
                  left: 0,
                  right: 0,
                  child: SheetHeader(
                    label: widget.sheetTitle!,
                    canDismiss: widget.showCloseIcon,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

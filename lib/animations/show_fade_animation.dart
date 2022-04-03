import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ShowFaeAnimations extends HookWidget {
  const ShowFaeAnimations({Key? key, required this.widgetChild})
      : super(key: key);
  final Widget widgetChild;

  @override
  Widget build(BuildContext context) {
    final controller =
        useAnimationController(duration: const Duration(milliseconds: 300));
    final Animation<double> opacity =
        Tween<double>(begin: 0.0, end: 1.0).animate(controller);
    useEffect(() {
      controller.forward();
      return null;
    });
    return AnimatedBuilder(
      animation: controller,
      child: widgetChild,
      builder: (context, child) {
        return FadeTransition(
          opacity: opacity,
          child: child as Widget,
        );
      },
    );
  }
}

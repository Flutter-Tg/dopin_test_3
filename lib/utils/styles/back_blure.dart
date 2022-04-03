import 'dart:ui';

import 'package:flutter/material.dart';

class BackBlur extends StatelessWidget {
  const BackBlur({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
        child: child,
      ),
    );
  }
}

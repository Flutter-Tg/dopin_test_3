import 'dart:ui';

import 'package:flutter/material.dart';

class BackgroundBure extends StatelessWidget {
  final double height;
  final double width;
  const BackgroundBure({Key? key, required this.height, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(),
      ),
    );
  }
}

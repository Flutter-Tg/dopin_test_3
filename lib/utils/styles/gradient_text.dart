import 'package:dopin_test_3/config/constans/app_constans.dart';
import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  final String text;
  final TextStyle? style;

  const GradientText({Key? key, required this.text, this.style})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment(0.2, 0.9),
          colors: [
            primaryPink,
            primaryBlue,
          ]).createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}

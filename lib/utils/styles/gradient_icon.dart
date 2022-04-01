import 'package:dopin_test_3/config/constans/app_constans.dart';
import 'package:flutter/material.dart';

class GradientIcon extends StatelessWidget {
  final IconData icons;
  final double? size;
  const GradientIcon({Key? key, required this.icons, this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment(0.2, 0.9),
          colors: [primaryPink, primaryBlue]).createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Icon(
        icons,
        size: size,
      ),
    );
  }
}

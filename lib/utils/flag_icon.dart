import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FlagIcon extends StatelessWidget {
  final double width;
  final double height;
  final String flag;
  const FlagIcon(
      {Key? key, required this.width, required this.height, required this.flag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(2)),
      child: SvgPicture.asset(
        'assets/flags/${flag.toLowerCase()}.svg',
        fit: BoxFit.cover,
        width: width,
        height: height,
        cacheColorFilter: true,
      ),
    );
  }
}

List<String> flags = [
  'fr',
  'ga',
  'tr',
];

import 'package:dopin_test_3/utils/network_imag_fade.dart';
import 'package:flutter/material.dart';

class NestedAvatart extends StatelessWidget {
  final List<String> images;
  const NestedAvatart({Key? key, required this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 26,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Positioned(
              left: 30,
              child: NetworkImageFade(
                  width: 18, height: 18, imageUrl: images[2], radius: 18)),
          Positioned(
              left: 15,
              child: NetworkImageFade(
                  width: 22, height: 22, imageUrl: images[1], radius: 18)),
          NetworkImageFade(
              width: 26, height: 26, imageUrl: images[0], radius: 18),
        ],
      ),
    );
  }
}

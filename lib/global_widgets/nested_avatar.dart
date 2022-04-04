import 'package:dopin_test_3/utils/network_imag_fade.dart';
import 'package:flutter/material.dart';

class NestedAvatart extends StatelessWidget {
  const NestedAvatart(
      {Key? key,
      required this.images,
      required this.width,
      required this.height})
      : super(key: key);
  final List<String> images;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Positioned(
              left: height / 0.9,
              child: NetworkImageFade(
                  width: height * 0.6,
                  height: height * 0.6,
                  imageUrl: images[2],
                  radius: height)),
          Positioned(
              left: height / 1.7,
              child: NetworkImageFade(
                  width: height * 0.8,
                  height: height * 0.8,
                  imageUrl: images[1],
                  radius: height)),
          NetworkImageFade(
              width: height,
              height: height,
              imageUrl: images[0],
              radius: height),
        ],
      ),
    );
  }
}

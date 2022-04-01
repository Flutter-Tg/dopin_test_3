import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:octo_image/octo_image.dart';

class NetworkImageFade extends StatelessWidget {
  final double width;
  final double height;
  final String imageUrl;
  final double radius;
  const NetworkImageFade({
    Key? key,
    required this.width,
    required this.height,
    required this.imageUrl,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(157, 157, 157, 0.2),
        borderRadius: BorderRadius.all(Radius.circular(radius)),

        // image: DecorationImage(
        //   image: NetworkImage(
        //     imageUrl,
        //   ),
        //   fit: BoxFit.cover,
        //   onError: (object, stackTrace) {
        //     print(object);
        //     print(stackTrace);
        //   },
        // ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        child: OctoImage(
          image: CachedNetworkImageProvider(imageUrl),
          placeholderBuilder: OctoPlaceholder.blurHash(
            'LEHV6nWB2yk8pyo0adR*.7kCMdnj',
          ),
          errorBuilder: OctoError.icon(color: Colors.black),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

// final Uint8List kTransparentImage = Uint8List.fromList(<int>[
//   0x89,
//   0x50,
//   0x4E,
//   0x47,
//   0x0D,
//   0x0A,
//   0x1A,
//   0x0A,
//   0x00,
//   0x00,
//   0x00,
//   0x0D,
//   0x49,
//   0x48,
//   0x44,
//   0x52,
//   0x00,
//   0x00,
//   0x00,
//   0x01,
//   0x00,
//   0x00,
//   0x00,
//   0x01,
//   0x08,
//   0x06,
//   0x00,
//   0x00,
//   0x00,
//   0x1F,
//   0x15,
//   0xC4,
//   0x89,
//   0x00,
//   0x00,
//   0x00,
//   0x0A,
//   0x49,
//   0x44,
//   0x41,
//   0x54,
//   0x78,
//   0x9C,
//   0x63,
//   0x00,
//   0x01,
//   0x00,
//   0x00,
//   0x05,
//   0x00,
//   0x01,
//   0x0D,
//   0x0A,
//   0x2D,
//   0xB4,
//   0x00,
//   0x00,
//   0x00,
//   0x00,
//   0x49,
//   0x45,
//   0x4E,
//   0x44,
//   0xAE,
// ]);

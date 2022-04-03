import 'package:dopin_test_3/config/constans/app_constans.dart';
import 'package:dopin_test_3/utils/network_imag_fade.dart';
import 'package:flutter/material.dart';

class ExplorNotif extends StatelessWidget {
  final String? message;
  const ExplorNotif({Key? key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 10,
        // bottom: (invents.length - 1) == index ? 120 : 20,
        bottom: 10,
      ),
      margin: const EdgeInsets.only(
        top: 20,
        bottom: 0,
        // left: width >= 300 ? width * 0.15 : width,
        // right: width >= 300 ? width * 0.15 : width,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Marya Now join dopin community, welcome',
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: fontTitleSmall,
                  ),
                ),
                const Text(
                  '2d ago',
                  style: TextStyle(
                    color: primaryGrey,
                    fontWeight: FontWeight.w500,
                    fontSize: fontText,
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  height: 54,
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => const Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: NetworkImageFade(
                        width: 54,
                        height: 54,
                        imageUrl:
                            'https://i.pinimg.com/736x/cc/5e/bb/cc5ebbe6235d4d9971206d8c2fcec530.jpg',
                        radius: 10,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(width: 23),
          Container(
            width: 96,
            height: 42,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(34),
              border: Border.all(width: 1, color: primaryGrey),
            ),
            child: const Align(
              alignment: Alignment.center,
              child: Text(
                'PROFILE',
                style: TextStyle(
                  color: primaryGrey,
                  fontWeight: FontWeight.w600,
                  fontSize: fontText,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

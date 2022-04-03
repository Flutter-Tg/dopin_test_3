import 'package:dopin_test_3/config/constans/app_constans.dart';
import 'package:flutter/material.dart';

class LiteAppBar extends StatelessWidget {
  const LiteAppBar(
      {Key? key,
      required this.title,
      required this.leftChildren,
      required this.rightChildren})
      : super(key: key);
  final String title;
  final List<Widget> leftChildren;
  final List<Widget> rightChildren;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: leftChildren,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: fontTitleSmall,
              fontWeight: FontWeight.w700,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: rightChildren,
          ),
        ],
      ),
    );
  }
}

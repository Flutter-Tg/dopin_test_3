import 'package:flutter/material.dart';

class GrayBoxContainer extends StatelessWidget {
  const GrayBoxContainer({Key? key, this.height, required this.child})
      : super(key: key);
  final double? height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      decoration: const BoxDecoration(
        color: Color(0xfffafafa),
        borderRadius: BorderRadius.all(Radius.circular(50)),
      ),
      alignment: Alignment.center,
      child: child,
    );
  }
}

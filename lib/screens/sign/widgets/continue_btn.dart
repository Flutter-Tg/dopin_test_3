import 'package:dopin_test_3/config/constans/app_constans.dart';
import 'package:flutter/material.dart';

class CountinueBtn extends StatelessWidget {
  final String? title;
  const CountinueBtn({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 30, bottom: 20),
      height: 80,
      decoration: const BoxDecoration(
        color: primaryBlue,
        borderRadius: BorderRadius.all(Radius.circular(22)),
      ),
      alignment: Alignment.center,
      child: Text(
        title != null ? title.toString() : 'CONTINUE',
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: fontTitle,
        ),
      ),
    );
  }
}

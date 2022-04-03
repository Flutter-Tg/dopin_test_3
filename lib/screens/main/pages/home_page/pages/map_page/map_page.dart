import 'package:dopin_test_3/config/constans/app_constans.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
      ),
    );
    return const ColoredBox(
      color: Colors.black,
      child: Align(
        alignment: Alignment.center,
        child: SizedBox(
          width: 50,
          height: 50,
          child: CircularProgressIndicator(color: primaryBlue),
        ),
      ),
    );
  }
}

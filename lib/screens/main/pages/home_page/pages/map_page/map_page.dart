import 'package:dopin_test_3/config/constans/app_constans.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('object');
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
      ),
    );
    return Container(
      color: Colors.black,
      child: const Center(
        child: SizedBox(
          width: 50,
          height: 50,
          child: CircularProgressIndicator(color: primaryBlue),
        ),
      ),
    );
  }
}

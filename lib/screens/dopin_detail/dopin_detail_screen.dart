import 'package:dopin_test_3/config/constans/app_constans.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'pages/detail_page/detail_page.dart';

class DopinDetailScreen extends ConsumerWidget {
  const DopinDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Widget> pages = [
      const DetailPage(),
    ];
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
      ),
    );
    return Material(
      color: primaryWhite,
      child: Stack(
        children: [
          pages.elementAt(0),
        ],
      ),
    );
  }
}

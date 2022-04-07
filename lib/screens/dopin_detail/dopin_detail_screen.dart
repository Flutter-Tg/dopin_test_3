import 'package:dopin_test_3/screens/dopin_detail/dopin_detail_controller.dart';
import 'package:dopin_test_3/utils/remove_scroll_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:dopin_test_3/config/constans/app_constans.dart';

import 'pages/dopin_detail_page/dopin_detail_page.dart';
import 'pages/dopin_manage_page/dopin_manage_page.dart';

class DopinDetailScreen extends ConsumerWidget {
  const DopinDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
      ),
    );

    return Material(
      color: primaryWhite,
      child: RemoveScrollGlow(
        child: Stack(
          children: [
            Consumer(
              builder: (context, ref, child) {
                final pageController =
                    ref.watch(dopinDetailPagControllerProvider);
                return PageView(
                  controller: pageController,
                  children: const [
                    DopinDetailPage(),
                    DopinManagePage(),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

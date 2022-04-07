import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// final dopinPageIndexProvider = StateProvider.autoDispose<int>((ref) => 0);
// final dopinDetailIndexProvider = StateProvider.autoDispose<int>((ref) => 0);

final dopinDetailPagControllerProvider =
    StateProvider.autoDispose<PageController>((ref) => PageController());

// class DopinDetailPageController extends ChangeNotifier {
//   final pageController = PageController();

//   void jump(int index) {
//     pageController.jumpToPage(index);
//   }

//   @override
//   void dispose() {
//     pageController.dispose();
//     print('pageController is dipos');
//     super.dispose();
//   }
// }

// final dopinDetailPageProvider =
//     ChangeNotifierProvider.autoDispose((ref) => DopinDetailPageController());

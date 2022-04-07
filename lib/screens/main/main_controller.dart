import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final mainPageIndexProvider = StateProvider.autoDispose<int>((ref) => 0);

final homePageIndexProvider = StateProvider.autoDispose<int>((ref) => 0);

// final menuIsDarkProvider = StateProvider.autoDispose<bool>((ref) => false);
final mainPagControllerProvider =
    StateProvider.autoDispose<PageController>((ref) => PageController());

final checkIfUserIsInMapPageProvider = Provider.autoDispose<bool>((ref) {
  final mainPageIndex = ref.watch(mainPageIndexProvider.state);
  final homePageIndex = ref.watch(homePageIndexProvider.state);

  if (mainPageIndex.state == 0) {
    if (homePageIndex.state == 1) {
      return true;
    } else {
      return false;
    }
  } else {
    return false;
  }
});

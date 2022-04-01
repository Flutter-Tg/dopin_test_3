import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final pageControllerProvider = StateProvider.autoDispose<PageController>((ref) {
  PageController pageController =
      PageController(initialPage: 0, keepPage: true);
  return pageController;
});

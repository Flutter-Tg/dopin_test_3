import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final signUpPageControllerProvider =
    StateProvider.autoDispose<PageController>((ref) {
  PageController pageController =
      PageController(initialPage: 0, keepPage: true);
  return pageController;
});

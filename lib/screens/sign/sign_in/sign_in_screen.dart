import 'package:dopin_test_3/screens/sign/sign_in/sign_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'pages/sing_in_page.dart';
import 'pages/verification_phone_signin_page.dart';

class SingInScreen extends ConsumerWidget {
  const SingInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = ref.watch(signInPageControllerProvider.state);
    List<Widget> pages = [
      const SignInPage(),
      const VerificationPhoneSignInPage(),
    ];
    return PageView.builder(
      controller: pageController.state,
      itemCount: pages.length,
      itemBuilder: (context, index) => pages[index],
    );
  }
}

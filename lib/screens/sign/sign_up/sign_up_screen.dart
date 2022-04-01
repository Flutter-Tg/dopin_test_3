// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'pages/information_page.dart';
import 'pages/nationality_page.dart';
import 'pages/profile_page.dart';
import 'pages/terms_page.dart';
import 'sign_up_controller.dart';
import 'pages/sing_up_page.dart';
import 'pages/verification_phone_signup_page.dart';

class SingUpScreen extends ConsumerWidget {
  const SingUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = ref.watch(signUpPageControllerProvider.state);
    List<Widget> pages = [
      const SignUpPage(),
      const VerificationPhoneSignUpPage(),
      const TermsPage(),
      const InformationPage(),
      const ProfilePage(),
      const NationalitPage(),
    ];
    return PageView.builder(
      controller: pageController.state,
      itemCount: pages.length,
      itemBuilder: (context, index) => pages[index],
    );
  }
}

import 'package:dopin_test_3/config/constans/app_constans.dart';
import 'package:dopin_test_3/global_widgets/input_box.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../widgets/sing_body.dart';
import '../sign_in_controller.dart';

class VerificationPhoneSignInPage extends ConsumerWidget {
  const VerificationPhoneSignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = ref.watch(signInPageControllerProvider.state);

    return SingBody(
      title: "Login",
      description: 'Verification code',
      function: () => pageController.state.previousPage(
          duration: const Duration(milliseconds: 300), curve: Curves.ease),
      children: [
        const Text(
          'Sent to +90 569 590 8989',
          style: TextStyle(
            color: Colors.black,
            fontSize: fontTitr,
            fontWeight: FontWeight.w600,
          ),
        ),
        const InputBox(title: 'Verification Code', child: SizedBox()),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(vertical: 7),
          height: 80,
          decoration: const BoxDecoration(
            color: primaryGrey,
            borderRadius: BorderRadius.all(Radius.circular(22)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Send again',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: fontTitle,
                ),
              ),
              Text(
                '(Remaining 00:25s)',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: fontTitle,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(vertical: 7),
          height: 80,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment(0.1, 1),
              colors: [
                primaryPink,
                primaryBlue,
              ],
            ),
            borderRadius: BorderRadius.all(Radius.circular(22)),
          ),
          alignment: Alignment.center,
          child: const Text(
            'SUBMIT',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: fontTitle,
            ),
          ),
        ),
        InkWell(
          onTap: () => pageController.state.previousPage(
              duration: const Duration(milliseconds: 300), curve: Curves.ease),
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 7),
            height: 80,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: primaryGrey),
              borderRadius: const BorderRadius.all(Radius.circular(22)),
            ),
            alignment: Alignment.center,
            child: const Text(
              'CHANGE NUMBER',
              style: TextStyle(
                color: primaryGrey,
                fontWeight: FontWeight.w600,
                fontSize: fontTitle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

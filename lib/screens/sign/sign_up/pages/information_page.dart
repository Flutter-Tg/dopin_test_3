import 'package:dopin_test_3/config/constans/app_constans.dart';
import 'package:dopin_test_3/global_widgets/input_box.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../widgets/continue_btn.dart';
import '../../widgets/sing_body.dart';
import '../sign_up_controller.dart';

class InformationPage extends ConsumerWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = ref.watch(signUpPageControllerProvider.state);
    return SingBody(
      title: 'Register',
      description: 'Information',
      function: () => pageController.state.previousPage(
          duration: const Duration(milliseconds: 300), curve: Curves.ease),
      children: [
        const Text(
          'Submit your phone phone number',
          style: TextStyle(
            color: Colors.black,
            fontSize: fontTitr,
            fontWeight: FontWeight.w600,
          ),
        ),
        InputBox(title: 'Usename', child: Container()),
        InputBox(title: 'Email address', child: Container()),
        InputBox(title: 'Password', child: Container()),
        InputBox(title: 'Re-Password', child: Container()),
        InkWell(
          onTap: () => pageController.state.nextPage(
              duration: const Duration(milliseconds: 300), curve: Curves.ease),
          child: const CountinueBtn(),
        ),
      ],
    );
  }
}

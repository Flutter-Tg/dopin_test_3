import 'package:dopin_test_3/config/constans/app_constans.dart';
import 'package:dopin_test_3/global_widgets/input_box.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../widgets/ask_for_account.dart';
import '../../widgets/continue_btn.dart';
import '../../widgets/sing_body.dart';
import '../sign_up_controller.dart';

class SignUpPage extends ConsumerWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = ref.watch(signUpPageControllerProvider.state);
    return SingBody(
      title: 'Register',
      description: 'Register Account',
      // set route
      function: () => context.pop(),
      children: [
        const Text(
          'Submit your phone phone number',
          style: TextStyle(
            color: Colors.black,
            fontSize: fontTitr,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 10),
        const InputBox(title: 'Phone Number', child: SizedBox()),
        InkWell(
            onTap: () => pageController.state.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.ease),
            child: const CountinueBtn()),
        const AskForAccount(login: false),
      ],
    );
  }
}

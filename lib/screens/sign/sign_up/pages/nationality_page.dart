import 'package:dopin_test_3/config/constans/app_constans.dart';
import 'package:dopin_test_3/global_widgets/input_box.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../widgets/continue_btn.dart';
import '../../widgets/sing_body.dart';
import '../sign_up_controller.dart';

class NationalitPage extends ConsumerWidget {
  const NationalitPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = ref.watch(signUpPageControllerProvider.state);
    return SingBody(
      title: 'Register',
      description: 'Nationality',
      function: () => pageController.state.previousPage(
          duration: const Duration(milliseconds: 300), curve: Curves.ease),
      children: [
        const Text(
          'Upload your profile',
          style: TextStyle(
            color: Colors.black,
            fontSize: fontTitr,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 20),
        const InputBox(title: 'Nationality', child: SizedBox()),
        InkWell(
          onTap: () {},
          child: const CountinueBtn(),
        ),
        const SizedBox(height: 20),
        InkWell(
          onTap: () {},
          child: const Align(
            alignment: Alignment.center,
            child: Text(
              'SKIP',
              style: TextStyle(
                  color: primaryGrey,
                  fontWeight: FontWeight.w600,
                  fontSize: fontTitle),
            ),
          ),
        )
      ],
    );
  }
}

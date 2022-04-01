import 'package:dopin_test_3/config/constans/app_constans.dart';
import 'package:dopin_test_3/global_widgets/input_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../widgets/ask_for_account.dart';
import '../../widgets/continue_btn.dart';
import '../../widgets/sing_body.dart';
import '../sign_in_controller.dart';

class SignInPage extends HookConsumerWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = ref.watch(signInPageControllerProvider.state);

    // for phone number Input
    final phoneNumberFormKey = GlobalKey<FormState>();
    GlobalKey<InputBoxState> phoneNumberKey = GlobalKey();
    final phoneNumbercontroller = useTextEditingController();

    // for password Input
    final passwordFormKey = GlobalKey<FormState>();
    GlobalKey<InputBoxState> passwordKey = GlobalKey();
    final passwordcontroller = useTextEditingController();

    return SingBody(
      title: 'login',
      description: "Login To Account",
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
        InputBox(
          key: phoneNumberKey,
          formKey: phoneNumberFormKey,
          title: 'Phone Number',
          child: TextFormField(
            controller: phoneNumbercontroller,
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                phoneNumberKey.currentState?.changeErrorStatus(true);
                return '';
              }
              phoneNumberKey.currentState?.changeErrorStatus(false);
              return null;
            },
          ),
        ),
        InputBox(
          textFieldController: phoneNumbercontroller,
          key: passwordKey,
          formKey: passwordFormKey,
          title: 'Password',
          child: TextFormField(
            controller: passwordcontroller,
            obscureText: true,
            decoration: const InputDecoration(
              border: InputBorder.none,
              errorStyle: TextStyle(height: 0),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                passwordKey.currentState?.changeErrorStatus(true);
                return '';
              }
              passwordKey.currentState?.changeErrorStatus(false);
              return null;
            },
          ),
        ),
        InkWell(
            onTap: () {
              pageController.state.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.ease);

              // if (phoneNumberFormKey.currentState!.validate() &
              //     passwordFormKey.currentState!.validate()) {
              // } else {}
            },
            child: const CountinueBtn()),
        const AskForAccount(login: true),
      ],
    );
  }
}

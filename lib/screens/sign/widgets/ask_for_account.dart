import 'package:dopin_test_3/config/constans/app_constans.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AskForAccount extends StatelessWidget {
  final bool login;
  const AskForAccount({
    Key? key,
    required this.login,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            login == true ? 'Not have account? ' : 'You have an account?',
            style: const TextStyle(
              color: primaryGrey,
              fontSize: fontTitle,
              fontWeight: FontWeight.w400,
            ),
          ),
          if (login == true)
            TextButton(
              // set route
              onPressed: () => context.go('/home/sign/:/signUp/:'),
              child: const Text(
                'Sign up',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: primaryBlue,
                  fontSize: fontTitle,
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
          else
            TextButton(
              onPressed: () => context.go('/home/sign/:/signIn/:'),
              child: const Text(
                'Sign in',
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: primaryBlue,
                  fontSize: fontTitle,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

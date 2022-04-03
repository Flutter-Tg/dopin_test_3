import 'package:dopin_test_3/config/constans/app_constans.dart';
import 'package:dopin_test_3/config/constans/assets_path.dart';
import 'package:dopin_test_3/utils/styles/gradient_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'widgets/ask_for_account.dart';

class SignScreen extends StatelessWidget {
  const SignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: primaryWhite,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(signImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'WELCOME TO',
                    style: TextStyle(
                        fontSize: fontBanner, fontWeight: FontWeight.w800),
                  ),
                  const GradientText(
                    text: 'Dopin',
                    style: TextStyle(
                        height: 1.1, fontSize: 51, fontWeight: FontWeight.w800),
                  ),
                  const Text(
                    'Make happy times for alls',
                    style: TextStyle(
                        fontSize: fontTitle, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 30),
                  InkWell(
                    // set route
                    onTap: () => context.go('/home/sign/:/signIn/:'),
                    child: const LoginBtn(
                      icon: Icons.stay_current_portrait,
                      text: 'Login with phone number',
                    ),
                  ),
                  const LoginBtn(
                    icon: Icons.mail_outline,
                    text: 'Login with Email',
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Or continue with',
                        style: TextStyle(
                          fontSize: fontTitle,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  const MilChimpBtn(
                      text: 'Google', svg: '', color: Color(0xfffff0df)),
                  const MilChimpBtn(
                      text: 'Facebook', svg: '', color: Color(0xffdff7ff)),
                  const MilChimpBtn(
                      text: 'Apple', svg: '', color: Color(0xfff7f7f7)),
                  const AskForAccount(login: true),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginBtn extends StatelessWidget {
  final IconData icon;
  final String text;
  const LoginBtn({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 7),
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.black),
        borderRadius: const BorderRadius.all(Radius.circular(22)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 22,
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: const TextStyle(
                fontWeight: FontWeight.w500, fontSize: fontTitle),
          ),
        ],
      ),
    );
  }
}

class MilChimpBtn extends StatelessWidget {
  final String text;
  final String svg;
  final Color color;
  const MilChimpBtn(
      {Key? key, required this.text, required this.svg, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 7),
      height: 80,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(22)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.facebook_rounded,
            size: 22,
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: fontTitle,
            ),
          ),
        ],
      ),
    );
  }
}

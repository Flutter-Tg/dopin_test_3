import 'package:dopin_test_3/config/constans/app_constans.dart';
import 'package:dopin_test_3/utils/network_imag_fade.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../widgets/continue_btn.dart';
import '../../widgets/sing_body.dart';
import '../sign_up_controller.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = ref.watch(signUpPageControllerProvider.state);
    return SingBody(
      title: 'Register',
      description: 'Show yourself',
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
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const NetworkImageFade(
              width: 96,
              height: 96,
              imageUrl:
                  'https://i.pinimg.com/736x/72/33/30/723330e3e0466902b20a53abd486ff96.jpg',
              radius: 100,
            ),
            Container(
              height: 65,
              width: 216,
              margin: const EdgeInsets.only(top: 20, bottom: 40),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: primaryBlue),
                borderRadius: const BorderRadius.all(Radius.circular(33)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.file_upload_outlined,
                    size: 24,
                    color: primaryBlue,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "UPLOAD PROFILE",
                    style: TextStyle(
                        color: primaryBlue,
                        fontWeight: FontWeight.w700,
                        fontSize: fontTitle),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () => pageController.state.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.ease),
              child: const CountinueBtn(),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () => pageController.state.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.ease),
              child: const Text(
                'SKIP',
                style: TextStyle(
                    color: primaryGrey,
                    fontWeight: FontWeight.w600,
                    fontSize: fontTitle),
              ),
            ),
          ],
        )
      ],
    );
  }
}

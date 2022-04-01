import 'package:dopin_test_3/config/constans/app_constans.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../widgets/continue_btn.dart';
import '../sign_up_controller.dart';

class TermsPage extends ConsumerWidget {
  const TermsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pageController = ref.watch(signUpPageControllerProvider.state);
    return Scaffold(
      backgroundColor: primaryWhite,
      appBar: AppBar(
        backgroundColor: primaryWhite,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Terms of use",
          style: TextStyle(
            color: Colors.black,
            fontSize: fontTitleSmall,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: InkWell(
          onTap: () => pageController.state.previousPage(
              duration: const Duration(milliseconds: 300), curve: Curves.ease),
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 19,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'TERMS OF USE DOPIN APP',
                style: TextStyle(
                    overflow: TextOverflow.clip,
                    fontSize: fontBanner,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: 15),
              const Text(
                'TERMS 1',
                style: TextStyle(
                    overflow: TextOverflow.clip,
                    fontSize: fontTitr,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 5),
              const Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                style: TextStyle(
                    overflow: TextOverflow.clip,
                    fontSize: fontTitle,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 40),
              const Text(
                'TERMS 2',
                style: TextStyle(
                    overflow: TextOverflow.clip,
                    fontSize: fontTitr,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 5),
              const Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard.",
                style: TextStyle(
                    overflow: TextOverflow.clip,
                    fontSize: fontTitle,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 40),
              const Text(
                'TERMS 3',
                style: TextStyle(
                    overflow: TextOverflow.clip,
                    fontSize: fontTitr,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 5),
              const Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                style: TextStyle(
                    overflow: TextOverflow.clip,
                    fontSize: fontTitle,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 40),
              InkWell(
                  onTap: () => pageController.state.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.ease),
                  child: const CountinueBtn(title: 'ACCEPT TERMS OF US')),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:dopin_test_3/config/constans/app_constans.dart';
import 'package:dopin_test_3/config/constans/assets_path.dart';
import 'package:dopin_test_3/utils/styles/gradient_icon.dart';
import 'package:dopin_test_3/utils/styles/gradient_text.dart';

import '../../main_controller.dart';
import 'pages/home_page/home_page.dart';
import 'pages/map_page/map_page.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const List<Widget> pages = [
      HomePage(),
      MapPage(),
    ];
    return Stack(
      children: [
        Consumer(
          builder: (context, ref, child) =>
              pages.elementAt(ref.watch(homePageIndexProvider.state).state),
        ),
        // Consumer(
        //   builder: (context, ref, child) => PageView.builder(
        //     controller: pageController,
        //     itemCount: pages.length,
        //     itemBuilder: (context, index) => pages[index],
        //     onPageChanged: (index) {
        //       ref.read(pageIndexProvider.state).state = index;
        //     },
        //   ),
        // ),

        Consumer(
          builder: (context, ref, child) {
            final isDark = ref.watch(checkIfUserIsInMapPageProvider);
            return SizedBox(
              width: double.infinity,
              height: 60 + MediaQuery.of(context).viewPadding.top,
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
                  child: Container(
                    // duration: const Duration(milliseconds: 500),
                    // curve: Curves.fastOutSlowIn,
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: MediaQuery.of(context).viewPadding.top,
                    ),
                    height: 105,
                    color: isDark == true
                        ? const Color.fromRGBO(0, 0, 0, 0.95)
                        : const Color.fromRGBO(255, 255, 255, 0.95),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned.fill(
                          left: 0,
                          child: Row(
                            children: [
                              SizedBox(
                                height: 30,
                                child: Image.asset(locationIcon),
                              ),
                              SizedBox(
                                width: 70,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const SizedBox(height: 9),
                                    Text(
                                      'Kadikoy',
                                      style: TextStyle(
                                        height: 0.5,
                                        color: isDark == true
                                            ? Colors.white
                                            : primaryBlue,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const Text(
                                      'istanbul,turkey',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: primaryGrey,
                                        fontSize: 10.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    isDark == true ? primaryPink : Colors.black,
                              ),
                            ],
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.center,
                            child: isDark == true
                                ? const Text(
                                    'Dopin',
                                    style: TextStyle(
                                      fontFamily: fontPo,
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  )
                                : const GradientText(
                                    text: 'Dopin',
                                    style: TextStyle(
                                      fontFamily: fontPo,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          child: Row(
                            children: [
                              Consumer(
                                builder: (context, ref, child) {
                                  final pageIndex =
                                      ref.watch(homePageIndexProvider.state);
                                  final checkIfUserIsInMapPage =
                                      ref.watch(checkIfUserIsInMapPageProvider);
                                  return pageIndex.state == 0
                                      ? InkWell(
                                          onTap: () {
                                            checkIfUserIsInMapPage;
                                            pageIndex.state = 1;
                                          },
                                          child: Container(
                                            width: 48,
                                            height: 48,
                                            padding: const EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                              color: isDark == true
                                                  ? Colors.white
                                                      .withOpacity(0.1)
                                                  : const Color(0xfff7f7f7),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.asset(
                                              earthIcon,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        )
                                      : InkWell(
                                          onTap: () {
                                            checkIfUserIsInMapPage;
                                            pageIndex.state = 0;
                                          },
                                          child: Container(
                                            width: 48,
                                            height: 48,
                                            padding: const EdgeInsets.all(10),
                                            decoration: BoxDecoration(
                                              color: isDark == true
                                                  ? Colors.white
                                                      .withOpacity(0.1)
                                                  : const Color(0xfff7f7f7),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.asset(
                                              earthIcon,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        );
                                },
                              ),
                              const SizedBox(width: 10),
                              InkWell(
                                // set route
                                onTap: () => context.go('/home/sign/:'),
                                child: isDark == true
                                    ? Container(
                                        width: 43,
                                        height: 43,
                                        decoration: const BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment(0.2, 0.9),
                                            colors: [
                                              primaryPink,
                                              primaryBlue,
                                            ],
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Icon(
                                          Icons.person,
                                          size: 24,
                                          color: Colors.white,
                                        ),
                                      )
                                    : Container(
                                        width: 43,
                                        height: 43,
                                        decoration: const BoxDecoration(
                                          color: Color(0x18D52EE9),
                                          shape: BoxShape.circle,
                                        ),
                                        child: const GradientIcon(
                                          icons: Icons.person,
                                          size: 24,
                                        ),
                                      ),
                              ),
                              // const SizedBox(width: 10),
                              // const CircleImageNetwork(
                              //   width: 48,
                              //   height: 48,
                              //   imageUrl: '',
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

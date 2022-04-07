import 'dart:ui';

import 'package:dopin_test_3/config/constans/app_constans.dart';
import 'package:dopin_test_3/screens/main/pages/home_page/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'main_controller.dart';
import 'pages/inbox_page/inbox_page.dart';
import 'pages/search_page/search_page.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // List<Widget> pages = [
    //   const HomeScreen(),
    //   const SearchPage(),
    //   const InboxPage(),
    // ];
    return Material(
      color: primaryWhite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // Consumer(
          //   builder: (context, ref, child) {
          //     return pages
          //         .elementAt(ref.watch(mainPageIndexProvider.state).state);
          //   },
          // ),
          // Consumer(
          //   builder: (context, ref, child) {
          //     return PageView(
          //       controller: ref.watch(mainPagControllerProvider),
          //       children: const [
          //         HomeScreen(),
          //         SearchPage(),
          //         InboxPage(),
          //       ],
          //     );
          //   },
          // ),
          Navigator(
            initialRoute: '/home',
            onGenerateRoute: (RouteSettings settings) {
              Widget page = const HomeScreen();
              switch (settings.name) {
                case '/home':
                  page = const HomeScreen();
                  break;
                case '/search':
                  page = const SearchPage();
                  break;
                case '/inbox':
                  page = const InboxPage();
                  break;
              }
              // if (settings.name == '/home') {
              //   page = const HomeScreen();
              // } else if (settings.name == '/search') {
              //   page = const SearchPage();
              // } else if (settings.name == '/inbox') {
              //   page = const InboxPage();
              // }

              return MaterialPageRoute<dynamic>(
                builder: (context) {
                  return page;
                },
                settings: settings,
              );
            },
          ),
          Consumer(
            builder: (context, ref, child) {
              final isDark = ref.watch(checkIfUserIsInMapPageProvider);
              return SizedBox(
                height: 60,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    ClipRRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
                        child: Container(
                          // duration: const Duration(milliseconds: 500),
                          // curve: Curves.fastOutSlowIn,
                          height: 60,
                          decoration: BoxDecoration(
                            color: isDark == true
                                ? const Color.fromRGBO(0, 0, 0, 0.95)
                                : const Color.fromRGBO(255, 255, 255, 0.95),
                            border: const Border(
                              top: BorderSide(color: Colors.black12, width: 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 600),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 00, left: 20),
                        child: Consumer(builder: (context, ref, child) {
                          final pageIndex =
                              ref.watch(mainPageIndexProvider.state);
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  pageIndex.state = 0;
                                  ref.watch(checkIfUserIsInMapPageProvider);
                                  Navigator.pushNamed(context, '/home');
                                },
                                child: BottomBarIcon(
                                  icon: pageIndex.state == 0
                                      ? Icons.home
                                      : Icons.home_outlined,
                                  text: 'Home',
                                  color: pageIndex.state == 0
                                      ? primaryPink
                                      : isDark == true
                                          ? Colors.white
                                          : Colors.black,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  ref.watch(checkIfUserIsInMapPageProvider);
                                  pageIndex.state = 1;
                                  Navigator.pushNamed(context, '/search');
                                },
                                child: BottomBarIcon(
                                  icon: pageIndex.state == 1
                                      ? Icons.manage_search
                                      : Icons.manage_search_outlined,
                                  text: 'Search',
                                  color: pageIndex.state == 1
                                      ? primaryPink
                                      : isDark == true
                                          ? Colors.white
                                          : Colors.black,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  ref.watch(checkIfUserIsInMapPageProvider);
                                  pageIndex.state = 2;
                                  Navigator.pushNamed(context, '/inbox');
                                },
                                child: BottomBarIcon(
                                  icon: pageIndex.state == 2
                                      ? Icons.upcoming
                                      : Icons.upcoming_outlined,
                                  text: 'Inbox',
                                  color: pageIndex.state == 2
                                      ? primaryPink
                                      : isDark == true
                                          ? Colors.white
                                          : Colors.black,
                                ),
                              ),
                              Container(
                                  width: 161,
                                  height: 43,
                                  padding: const EdgeInsets.only(right: 20),
                                  // margin: EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment(0.2, 0.9),
                                      colors: [
                                        primaryPink,
                                        primaryBlue,
                                      ],
                                    ),
                                    borderRadius: BorderRadius.only(
                                      topLeft: const Radius.circular(30),
                                      bottomLeft: const Radius.circular(30),
                                      topRight: Radius.circular(
                                          MediaQuery.of(context).size.width >=
                                                  600
                                              ? 30
                                              : 0),
                                      bottomRight: Radius.circular(
                                          MediaQuery.of(context).size.width >=
                                                  600
                                              ? 30
                                              : 0),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.control_point_rounded,
                                        size: 28,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        'NEW DOPIN',
                                        style: TextStyle(
                                          fontFamily: fontPo,
                                          color: Colors.white,
                                          fontSize: 16, // fontTitleSmall
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  )
                                  //  Column(
                                  //     mainAxisAlignment: MainAxisAlignment.center,
                                  //     children: const [
                                  //       Text(
                                  //         'Your Dopin',
                                  //         style: TextStyle(
                                  //           color: Colors.white,
                                  //           fontSize: fontTitleSmall,
                                  //           fontWeight: FontWeight.w700,
                                  //         ),
                                  //       ),
                                  //       Text(
                                  //         'Start 14:00Pm',
                                  //         style: TextStyle(
                                  //           color: Colors.white,
                                  //           fontSize: fontText,
                                  //           fontWeight: FontWeight.w400,
                                  //         ),
                                  //       ),
                                  //     ],
                                  //   ),
                                  ),
                            ],
                          );
                        }),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class BottomBarIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  const BottomBarIcon({
    Key? key,
    required this.icon,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: color,
          size: 32,
        ),
        Text(
          text,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: color,
            fontSize: fontSmall,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

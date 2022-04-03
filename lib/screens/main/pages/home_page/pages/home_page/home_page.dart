import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:dopin_test_3/animations/show_fade_animation.dart';
import 'package:dopin_test_3/config/constans/app_constans.dart';
import 'package:dopin_test_3/config/constans/assets_path.dart';
import 'package:dopin_test_3/global_widgets/nested_avatar.dart';
import 'package:dopin_test_3/global_widgets/tabbar_custom.dart';
import 'package:dopin_test_3/screens/main/pages/home_page/home_controller.dart';
import 'package:dopin_test_3/utils/remove_scroll_glow.dart';
import 'package:dopin_test_3/utils/styles/back_blure.dart';

import 'tabs/Explore.dart';
import 'tabs/nearby.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    final tabSticky = ref.read(tabStickyProvider.state);
    final _controller = useScrollController();
    _controller.addListener(() {
      if (_controller.offset >= 150) {
        tabSticky.state = true;
      } else {
        tabSticky.state = false;
      }
    });

    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Stack(
        children: [
          NestedScrollView(
            controller: _controller,
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 80 + MediaQuery.of(context).viewPadding.top,
                    left: 20,
                    right: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Welcome to',
                            style: TextStyle(
                              fontFamily: fontPo,
                              fontSize: fontTitle,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Text(
                            'Kadikoy',
                            style: TextStyle(
                              fontFamily: fontPo,
                              fontSize: 32,
                              fontWeight: FontWeight.w800,
                              height: 1.2,
                            ),
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Row(
                            children: const [
                              NestedAvatart(
                                images: [
                                  'https://i.pinimg.com/564x/6a/b2/b1/6ab2b1afec93b5915bbdcaba6feefb45.jpg',
                                  'https://i.pinimg.com/564x/c8/0e/53/c80e53e79c805fb7f1a3649930276b4d.jpg',
                                  'https://i.pinimg.com/564x/27/4e/25/274e2536501e71208ca43a59b417eac4.jpg',
                                ],
                              ),
                              SizedBox(
                                width: 9,
                              ),
                              Text(
                                '459 People active',
                                style: TextStyle(
                                  color: primaryBlue,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 140,
                        height: 100,
                        child: Image.asset(funImage),
                      )
                    ],
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: TabBarCustom(
                  isScroll: true,
                  tabs: ['Nearby', 'Explore', 'MyDopin'],
                  paddingTop: 20,
                  labelSize: fontBanner,
                  unLabelSize: fontTitr,
                ),
              ),
            ],
            body: const RemoveScrollGlow(
              child: TabBarView(
                children: [
                  NearbyTab(),
                  ExploreTab(),
                  SizedBox(),
                ],
              ),
            ),
          ),
          Positioned(
            top: 60 + MediaQuery.of(context).viewPadding.top,
            child: Consumer(
              builder: ((context, ref, child) {
                final _tabSticky = ref.watch(tabStickyProvider.state);
                return _tabSticky.state
                    ? ShowFaeAnimations(
                        widgetChild: BackBlur(
                          child: SizedBox(
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            child: ColoredBox(
                              color: primaryBlue.withOpacity(0.95),
                              child: const TabBar(
                                  isScrollable: false,
                                  labelPadding: EdgeInsets.zero,
                                  padding: EdgeInsets.zero,
                                  labelColor: Colors.white,
                                  labelStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: fontTitr,
                                      fontFamily: 'Poppins'),
                                  unselectedLabelColor:
                                      Color.fromRGBO(255, 255, 255, 0.7),
                                  unselectedLabelStyle: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: fontTitle,
                                    fontFamily: 'Poppins',
                                  ),
                                  indicator: BoxDecoration(),
                                  tabs: [
                                    Tab(
                                      text: 'Nearby',
                                    ),
                                    Tab(
                                      text: 'Explore',
                                    ),
                                    Tab(
                                      text: 'MyDopin',
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                      )
                    : const SizedBox();
              }),
            ),
          ),
        ],
      ),
    );
  }
}

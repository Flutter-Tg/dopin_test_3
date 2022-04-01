import 'dart:ui';

import 'package:dopin_test_3/config/constans/app_constans.dart';
import 'package:dopin_test_3/config/constans/assets_path.dart';
import 'package:dopin_test_3/global_widgets/nested_avatar.dart';
import 'package:dopin_test_3/global_widgets/tabbar_custom.dart';
import 'package:dopin_test_3/utils/styles/gradient_icon.dart';
import 'package:dopin_test_3/utils/styles/gradient_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

import 'tabs/Explore.dart';
import 'tabs/nearby.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return Stack(
      children: [
        DefaultTabController(
          length: 3,
          initialIndex: 0,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(top: 125, left: 20, right: 20),
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
            body: TabBarView(
              children: [
                const NearbyTab(),
                const ExploreTab(),
                Container(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}

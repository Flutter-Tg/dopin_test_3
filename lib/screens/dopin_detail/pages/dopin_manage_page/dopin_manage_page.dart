import 'package:dopin_test_3/config/constans/app_constans.dart';
import 'package:dopin_test_3/global_widgets/bars/lite_appbar.dart';
import 'package:dopin_test_3/global_widgets/tabbar_custom.dart';

import 'package:dopin_test_3/screens/dopin_detail/pages/dopin_manage_page/tabs/request_tab.dart';
import 'package:dopin_test_3/utils/network_imag_fade.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../dopin_detail_controller.dart';
import 'tabs/participations_tab.dart';

class DopinManagePage extends ConsumerStatefulWidget {
  const DopinManagePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DopinManagePageState();
}

class _DopinManagePageState extends ConsumerState<DopinManagePage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    print('manage');
    return DefaultTabController(
      length: 3,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: MediaQuery.of(context).viewPadding.top,
                bottom: 40,
              ),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    primaryPink,
                    primaryBlue,
                  ],
                ),
              ),
              child: Column(
                children: [
                  LiteAppBar(
                    leftChildren: [
                      InkWell(
                        onTap: () => context.pop(),
                        child: const Icon(
                          Icons.arrow_back_ios,
                          size: 24,
                          color: Colors.white,
                        ),
                      ),
                    ],
                    rightChildren: [
                      InkWell(
                        onTap: () => ref
                            .read(dopinDetailPagControllerProvider)
                            .jumpToPage(0),
                        child: const Icon(
                          Icons.remove_red_eye_outlined,
                          size: 24,
                          color: Colors.white,
                        ),
                      ),
                    ],
                    title: 'Dopin Details',
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Let's Go on Jamaya Watter Park",
                              style: TextStyle(
                                overflow: TextOverflow.clip,
                                color: Colors.white,
                                fontSize: fontTitle,
                                fontWeight: FontWeight.w700,
                                height: 1.1,
                              ),
                            ),
                            Text(
                              '20m ago',
                              style: TextStyle(
                                fontSize: fontTitle,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const NetworkImageFade(
                        width: 54,
                        height: 54,
                        imageUrl:
                            'https://i.pinimg.com/564x/7b/1b/c2/7b1bc2aa9083f2116288719812db3edc.jpg',
                        radius: 54,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: TabBarCustom(
              isScroll: true,
              labelSize: fontTitr,
              unLabelSize: fontTitle,
              paddingTop: 0,
              paddingLabel: 20,
              tabs: [
                'Request',
                'Participations',
                'Detail',
              ],
            ),
          )
        ],
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: TabBarView(
            children: [
              RequestTab(),
              ParticioationsTab(),
              SizedBox(),
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

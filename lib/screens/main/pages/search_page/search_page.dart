import 'package:dopin_test_3/config/constans/app_constans.dart';
import 'package:dopin_test_3/global_widgets/tabbar_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'search_controller.dart';

class SearchPage extends StatefulHookConsumerWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchPageState();
}

class _SearchPageState extends ConsumerState<SearchPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    final searchTextController = useTextEditingController();
    super.build(context);
    final searchBoxTypingStatus = ref.read(searchBoxTypingStatusProvider.state);
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            pinned: true,
            backgroundColor: primaryWhite,
            title: Container(
              height: 45,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Color(0xfff2f2f2),
                borderRadius: BorderRadius.all(Radius.circular(57)),
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.search,
                      size: 22,
                      color: primaryGrey,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 0),
                      child: TextField(
                        // controller: searchController.searchController,
                        style: const TextStyle(
                          fontSize: fontTitleSmall,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'search',
                          hintStyle: TextStyle(
                            fontSize: fontTitleSmall,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        onChanged: (vlue) {
                          if (vlue.isNotEmpty) {
                            searchBoxTypingStatus.state = true;
                          } else {
                            searchBoxTypingStatus.state = false;
                          }
                        },
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Consumer(
                    builder: (context, ref, child) {
                      final searchBoxTypingStatusWatch =
                          ref.read(searchBoxTypingStatusProvider.state);
                      return searchBoxTypingStatusWatch.state == true
                          ? Container(
                              width: 32,
                              height: 32,
                              decoration: const BoxDecoration(
                                  color: Color(0x7EC4C4C4),
                                  shape: BoxShape.circle),
                              child: InkWell(
                                onTap: () {
                                  searchTextController.text = '';
                                },
                                child: const Icon(
                                  Icons.close,
                                  size: 23,
                                  color: primaryGrey,
                                ),
                              ),
                            )
                          : const SizedBox();
                    },
                  ),
                ],
              ),
            ),
            elevation: 0,
          ),
          const SliverToBoxAdapter(
            child: TabBarCustom(
              isScroll: false,
              tabs: ['Peoples', 'Dopins'],
              paddingTop: 10,
              paddingLabel: 0,
              labelSize: fontTitr,
              unLabelSize: fontTitle,
            ),
          )
        ],
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return const Text(" Search Page - Peoples");
              },
            ),
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return const Text(" Search Page - Dopins");
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

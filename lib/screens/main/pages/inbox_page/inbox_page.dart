import 'package:dopin_test_3/config/constans/app_constans.dart';
import 'package:dopin_test_3/global_widgets/tabbar_custom.dart';
import 'package:flutter/material.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    print('inbox');
    super.build(context);
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const SliverAppBar(
            pinned: true,
            backgroundColor: primaryWhite,
            centerTitle: true,
            title: Text(
              'Inbox (24)',
              style: TextStyle(
                color: Colors.black,
                fontSize: fontTitleSmall,
                fontWeight: FontWeight.w700,
              ),
            ),
            elevation: 0,
          ),
          const SliverToBoxAdapter(
            child: TabBarCustom(
              isScroll: false,
              tabs: ['Notifications', 'System'],
              paddingTop: 10,
              paddingLabel: 0,
              labelSize: fontTitr,
              unLabelSize: fontTitle,
            ),
          ),
        ],
        body: TabBarView(
          children: [
            ListView.builder(
              itemBuilder: (context, index) {
                return Text(" Inbox Page - Notifications $index");
              },
            ),
            ListView.builder(
              itemBuilder: (context, index) {
                return Text(" Inbox Page - System $index");
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

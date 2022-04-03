import 'package:dopin_test_3/global_widgets/items/explor_notif.dart';
import 'package:dopin_test_3/utils/remove_scroll_glow.dart';
import 'package:flutter/material.dart';

class ExploreTab extends StatefulWidget {
  const ExploreTab({Key? key}) : super(key: key);

  @override
  State<ExploreTab> createState() => _ExploreTabState();
}

class _ExploreTabState extends State<ExploreTab>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return RemoveScrollGlow(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 20,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => const ExplorNotif(),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

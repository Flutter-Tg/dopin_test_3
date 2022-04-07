import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:dopin_test_3/global_widgets/items/dopin_item.dart';
import 'package:dopin_test_3/utils/remove_scroll_glow.dart';

class NearbyTab extends StatefulWidget {
  const NearbyTab({Key? key}) : super(key: key);

  @override
  State<NearbyTab> createState() => _NearbyTabState();
}

class _NearbyTabState extends State<NearbyTab>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return RemoveScrollGlow(
      child: ListView.builder(
        padding: const EdgeInsets.only(bottom: 60),
        itemCount: 20,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => context.goNamed('dopin_detail'),
            child: const DopinItem(),
          );
        },
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

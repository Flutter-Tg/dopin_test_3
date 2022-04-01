import 'package:dopin_test_3/global_widgets/items/explor_notif.dart';
import 'package:flutter/material.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 20,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => const ExplorNotif(),
    );
  }
}

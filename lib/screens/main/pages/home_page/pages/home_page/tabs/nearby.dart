import 'package:dopin_test_3/global_widgets/items/dopin_item.dart';
import 'package:flutter/material.dart';

class NearbyTab extends StatelessWidget {
  const NearbyTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 20,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => const DopinItem(),
    );
  }
}

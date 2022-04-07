import 'package:dopin_test_3/config/constans/app_constans.dart';
import 'package:flutter/material.dart';

class TabBarCustom extends StatelessWidget {
  final TabController? controller;
  final bool isScroll;
  final List<String> tabs;
  final double labelSize;
  final double unLabelSize;
  final double paddingTop;
  final double paddingLabel;
  const TabBarCustom({
    Key? key,
    this.controller,
    required this.isScroll,
    required this.tabs,
    required this.paddingTop,
    required this.labelSize,
    required this.unLabelSize,
    required this.paddingLabel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: paddingTop, bottom: 0),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: Colors.black12),
        ),
      ),
      child: TabBar(
        controller: controller,
        isScrollable: isScroll,
        labelPadding: EdgeInsets.symmetric(horizontal: paddingLabel),
        labelColor: Colors.black,
        labelStyle: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: labelSize,
            fontFamily: 'Poppins'),
        unselectedLabelColor: primaryGrey,
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: unLabelSize,
          fontFamily: 'Poppins',
        ),
        indicator: const BoxDecoration(),
        tabs: List.generate(
          tabs.length,
          (index) => Tab(
            text: tabs[index],
            height: 60,
          ),
        ),
      ),
    );
  }
}

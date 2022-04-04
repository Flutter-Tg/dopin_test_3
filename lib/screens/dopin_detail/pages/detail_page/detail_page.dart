// ignore_for_file: prefer_const_constructors

import 'package:dopin_test_3/config/constans/app_constans.dart';
import 'package:dopin_test_3/config/constans/assets_path.dart';
import 'package:dopin_test_3/global_widgets/bars/lite_appbar.dart';
import 'package:dopin_test_3/global_widgets/items/sponser_item.dart';
import 'package:dopin_test_3/global_widgets/nested_avatar.dart';
import 'package:dopin_test_3/utils/flag_icon.dart';
import 'package:dopin_test_3/utils/network_imag_fade.dart';
import 'package:dopin_test_3/utils/styles/gray_box_container.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DetailPage extends ConsumerWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Column(
                    children: [
                      Container(
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
                                const SizedBox(width: 26),
                                const Icon(
                                  Icons.campaign_outlined,
                                  size: 24,
                                  color: Colors.white,
                                ),
                              ],
                              rightChildren: [
                                InkWell(
                                  onTap: () => context.goNamed('dopin_manage'),
                                  child: Icon(
                                    Icons.settings,
                                    size: 24,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: 26),
                                Icon(
                                  Icons.switch_access_shortcut,
                                  size: 24,
                                  color: Colors.white,
                                ),
                              ],
                              title: 'Dopin Details',
                            ),
                            SizedBox(height: 15),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: const Text(
                                    "Let's Go on Jamaya Watter Park",
                                    style: TextStyle(
                                      overflow: TextOverflow.clip,
                                      color: Colors.white,
                                      fontFamily: fontPo,
                                      fontSize: fontBanner,
                                      fontWeight: FontWeight.w700,
                                      height: 1.1,
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 30,
                                      child: Image.asset(locationIcon),
                                    ),
                                    const Text(
                                      '200m',
                                      style: TextStyle(
                                        fontSize: fontTextSmall,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const Text(
                                      'away',
                                      style: TextStyle(
                                        height: 0.7,
                                        fontSize: fontTextSmall,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  '20m ago',
                                  style: TextStyle(
                                    fontSize: fontTitle,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 7, horizontal: 12),
                                  decoration: const BoxDecoration(
                                      color: Color.fromRGBO(255, 255, 255, 0.1),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50))),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: const [
                                      Icon(
                                        Icons.people_alt_outlined,
                                        color: Colors.white,
                                        size: 24,
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        '3',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: fontTitle,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Text(
                                        '/60',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: fontText,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const ColoredBox(
                        color: primaryWhite,
                        child: SizedBox(
                          height: 50,
                          width: double.infinity,
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(width: 5, color: primaryWhite),
                        shape: BoxShape.circle,
                      ),
                      child: const NetworkImageFade(
                          width: 86,
                          height: 86,
                          imageUrl:
                              'https://i.pinimg.com/564x/7b/1b/c2/7b1bc2aa9083f2116288719812db3edc.jpg',
                          radius: 100),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const Text(
                      'Mohammad Treno',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: fontTitle,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Text(
                      '24 Dopin so far',
                      style: TextStyle(
                        fontSize: fontText,
                        fontWeight: FontWeight.w600,
                        color: primaryPink,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const FlagIcon(width: 28, height: 20, flag: 'tr'),
                    const SizedBox(height: 21),
                    const Text(
                      "what's my Dopin?",
                      style: TextStyle(
                        fontSize: fontTitle,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Text(
                      'Music buff🌹. Travel scholar. Zombie fanatic. Coffee specialist. Explorer😇. Thinker. Social media nerd. Pop culture ninja.🌈😎',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: fontTitleSmall,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 30),
                    const SponserItem(),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Expanded(
                          child: GrayBoxContainer(
                            // height: 54,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Dopiner',
                                  style: TextStyle(
                                    fontSize: fontText,
                                    fontWeight: FontWeight.w600,
                                    color: primaryGrey,
                                  ),
                                ),
                                Text(
                                  '@FlutterTg',
                                  style: TextStyle(
                                    fontSize: fontText,
                                    fontWeight: FontWeight.w600,
                                    color: primaryBlue,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 15),
                        Expanded(
                          child: GrayBoxContainer(
                            // height: 54,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Cast',
                                  style: TextStyle(
                                    fontSize: fontText,
                                    fontWeight: FontWeight.w600,
                                    color: primaryGrey,
                                  ),
                                ),
                                Text(
                                  '😎 Fun',
                                  style: TextStyle(
                                    fontSize: fontTitle,
                                    fontWeight: FontWeight.w600,
                                    color: primaryPink,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: GrayBoxContainer(
                            // height: 84,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Start',
                                  style: TextStyle(
                                    fontSize: fontText,
                                    fontWeight: FontWeight.w600,
                                    color: primaryGrey,
                                  ),
                                ),
                                Text(
                                  '12:56 PM',
                                  style: TextStyle(
                                    fontSize: fontTitle,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'Today',
                                  style: TextStyle(
                                    fontSize: fontTitle,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: GrayBoxContainer(
                            // height: 84,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Start',
                                  style: TextStyle(
                                    fontSize: fontText,
                                    fontWeight: FontWeight.w600,
                                    color: primaryGrey,
                                  ),
                                ),
                                Text(
                                  '16:30 PM',
                                  style: TextStyle(
                                    fontSize: fontTitle,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'Today',
                                  style: TextStyle(
                                    fontSize: fontTitle,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    GrayBoxContainer(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Languages',
                            style: TextStyle(
                              fontSize: fontTitle,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 10),
                          Wrap(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            alignment: WrapAlignment.start,
                            spacing: 10,
                            runSpacing: 10,
                            children: [
                              Wrap(
                                children: const [
                                  FlagIcon(width: 28, height: 20, flag: 'fr'),
                                  SizedBox(width: 10),
                                  Text(
                                    'Freanch',
                                    style: TextStyle(
                                      fontSize: fontText,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              Wrap(
                                children: const [
                                  FlagIcon(width: 28, height: 20, flag: 'TR'),
                                  SizedBox(width: 10),
                                  Text(
                                    'Turkish',
                                    style: TextStyle(
                                      fontSize: fontText,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              Wrap(
                                children: const [
                                  FlagIcon(width: 28, height: 20, flag: 'ga'),
                                  SizedBox(width: 10),
                                  Text(
                                    'English',
                                    style: TextStyle(
                                      fontSize: fontText,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 38),
                    NestedAvatart(
                      height: 65,
                      width: 115,
                      images: const [
                        'https://i.pinimg.com/564x/6a/b2/b1/6ab2b1afec93b5915bbdcaba6feefb45.jpg',
                        'https://i.pinimg.com/564x/c8/0e/53/c80e53e79c805fb7f1a3649930276b4d.jpg',
                        'https://i.pinimg.com/564x/27/4e/25/274e2536501e71208ca43a59b417eac4.jpg',
                      ],
                    ),
                    SizedBox(height: 5),
                    const Text(
                      '45 Participations',
                      style: TextStyle(
                        fontSize: fontTitle,
                        fontWeight: FontWeight.w500,
                        color: primaryBlue,
                      ),
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: const [
                        Text(
                          '15:16',
                          style: TextStyle(
                            fontFamily: fontPo,
                            fontSize: 48,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Time left to Start',
                          style: TextStyle(
                            height: 0.5,
                            fontSize: fontText,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 46),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  image: DecorationImage(
                    image: AssetImage(mapImage),
                    fit: BoxFit.cover,
                    // filterQuality: FilterQuality.low,
                  ),
                ),
                child: Container(
                  constraints: BoxConstraints(minHeight: 450),
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.1),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: const [
                        Color.fromRGBO(0, 0, 0, 0.8),
                        Color.fromRGBO(88, 29, 255, 0.8),
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Text(
                    'Join Dopin For Access Location \n& Contact Details',
                    style: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        height: 1.2),
                  ),
                ),
              )
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: 80,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(255, 255, 255, 0),
                  Color.fromRGBO(255, 255, 255, 0.7),
                  Color.fromRGBO(255, 255, 255, 1),
                ],
              ),
              color: Colors.white70,
            ),
            child: Container(
              width: 202,
              height: 64,
              padding: const EdgeInsets.all(2),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromRGBO(236, 48, 228, 0.17),
                    Color.fromRGBO(88, 29, 255, 0.17),
                  ],
                ),
                borderRadius: BorderRadius.all(Radius.circular(36)),
              ),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      primaryPink,
                      primaryBlue,
                    ],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(36)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      '👋',
                      style: TextStyle(
                        fontSize: fontText,
                      ),
                    ),
                    Text(
                      'REQUEST JOIN',
                      style: TextStyle(
                        fontSize: fontText,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

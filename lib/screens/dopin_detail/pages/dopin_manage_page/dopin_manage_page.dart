import 'package:dopin_test_3/config/constans/app_constans.dart';
import 'package:dopin_test_3/config/constans/assets_path.dart';
import 'package:dopin_test_3/global_widgets/bars/lite_appbar.dart';
import 'package:dopin_test_3/utils/network_imag_fade.dart';
import 'package:flutter/material.dart';

class DopinManagePage extends StatelessWidget {
  const DopinManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                            onTap: () {},
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
                        rightChildren: const [
                          Icon(
                            Icons.bookmark_add_outlined,
                            size: 24,
                            color: Colors.white,
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
                      const SizedBox(height: 15),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Expanded(
                            child: Text(
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50))),
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
      ],
    );
  }
}

import 'package:dopin_test_3/config/constans/app_constans.dart';
import 'package:dopin_test_3/config/constans/assets_path.dart';
import 'package:dopin_test_3/utils/flag_icon.dart';
import 'package:dopin_test_3/utils/network_imag_fade.dart';
import 'package:dopin_test_3/utils/styles/gradient_text.dart';
import 'package:flutter/material.dart';

class DopinItem extends StatelessWidget {
  const DopinItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 10,
        // bottom: (invents.length - 1) == index ? 120 : 20,
        bottom: 10,
      ),
      margin: const EdgeInsets.only(
        top: 20,
        bottom: 0,
        // left: width >= 300 ? width * 0.15 : width,
        // right: width >= 300 ? width * 0.15 : width,
      ),
      decoration: const BoxDecoration(

          // boxShadow: [
          //   BoxShadow(
          //     blurRadius: 26,
          //     color: isInView
          //         ? Colors.black.withOpacity(0.1)
          //         : Colors.transparent,
          //   )
          // ],
          ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const NetworkImageFade(
                width: 49,
                height: 49,
                imageUrl:
                    'https://i.pinimg.com/736x/cc/5e/bb/cc5ebbe6235d4d9971206d8c2fcec530.jpg',
                radius: 49,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      constraints: const BoxConstraints(maxWidth: 200),
                      child: const Text(
                        "Who Enjoy a Caffe and Talk",
                        style: TextStyle(
                            fontFamily: fontPo,
                            overflow: TextOverflow.clip,
                            fontSize: fontTitrSmall,
                            fontWeight: FontWeight.w700,
                            height: 1.25),
                      ),
                    ),
                    const Text(
                      '20m ago',
                      style: TextStyle(
                        fontSize: fontTextSmall,
                        fontWeight: FontWeight.w500,
                        color: primaryGrey,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 30,
                    child: Image.asset(locationIcon),
                  ),
                  const Text(
                    '200',
                    style: TextStyle(
                      fontSize: fontTextSmall,
                      fontWeight: FontWeight.w600,
                      color: primaryGrey,
                    ),
                  ),
                  const Text(
                    'away',
                    style: TextStyle(
                      height: 0.7,
                      fontSize: fontTextSmall,
                      fontWeight: FontWeight.w400,
                      color: primaryGrey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 54,
                  decoration: const BoxDecoration(
                    color: Color(0xfffafafa),
                    borderRadius: BorderRadius.all(Radius.circular(42)),
                  ),
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
                child: Container(
                  height: 54,
                  decoration: const BoxDecoration(
                    color: Color(0xfffafafa),
                    borderRadius: BorderRadius.all(Radius.circular(42)),
                  ),
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
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            height: 73,
            decoration: const BoxDecoration(
              color: Color(0xfffafafa),
              borderRadius: BorderRadius.all(Radius.circular(42)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Languages',
                  style: TextStyle(
                    fontFamily: fontPo,
                    fontSize: fontTitle,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                Row(
                  children: const [
                    FlagIcon(width: 28, height: 20, flag: 'fr'),
                    SizedBox(width: 20),
                    FlagIcon(width: 28, height: 20, flag: 'TR'),
                    SizedBox(width: 20),
                    FlagIcon(width: 28, height: 20, flag: 'ga'),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Padding(
              //   padding: const EdgeInsets.only(left: 30),
              //   child: GradientText(
              //     text: 'Started',
              //     style: TextStyle(
              //       shadows: [
              //         BoxShadow(
              //           blurRadius: 12,
              //           offset: const Offset(0, 4),
              //           color: primaryPink.withOpacity(0.34),
              //         )
              //       ],
              //       fontSize: 28,
              //       fontWeight: FontWeight.w800,
              //     ),
              //   ),
              // ),

              Column(
                children: const [
                  Text(
                    '15:16',
                    style: TextStyle(
                      fontFamily: fontPo,
                      fontSize: fontBanner,
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

              // When Requst is in Progress
              // Container(
              //   width: 169,
              //   height: 68,
              //   decoration: BoxDecoration(
              //     color: const Color(0xfffafafa),
              //     border: Border.all(width: 2, color: primaryGrey),
              //     borderRadius: const BorderRadius.all(Radius.circular(36)),
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: const [
              //       Icon(
              //         Icons.hourglass_bottom,
              //         size: 24,
              //         color: primaryGrey,
              //       ),
              //       SizedBox(width: 5),
              //       Text(
              //         'PENDING',
              //         overflow: TextOverflow.ellipsis,
              //         style: TextStyle(
              //           color: primaryGrey,
              //           fontSize: fontTitle,
              //           fontWeight: FontWeight.w700,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),

              // for send Request
              // this can be on or off
              // Opacity(
              //   opacity: 1,
              //   child: Container(
              //     padding: const EdgeInsets.all(2),
              //     decoration: const BoxDecoration(
              //       gradient: LinearGradient(
              //         begin: Alignment.topLeft,
              //         end: Alignment.bottomRight,
              //         colors: [
              //           primaryPink,
              //           primaryBlue,
              //         ],
              //       ),
              //       borderRadius: BorderRadius.all(Radius.circular(36)),
              //     ),
              //     child: Container(
              //       width: 156,
              //       height: 68,
              //       decoration: const BoxDecoration(
              //         color: Color(0xffFBEAFD),
              //         borderRadius: BorderRadius.all(Radius.circular(36)),
              //       ),
              //       child: Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           const GradientIcon(
              //             icons: Icons.control_point_rounded,
              //             size: 33,
              //           ),
              //           const SizedBox(width: 5),
              //           Column(
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             crossAxisAlignment: CrossAxisAlignment.center,
              //             children: [
              //               const GradientText(
              //                 text: 'Request',
              //                 style: TextStyle(
              //                   fontSize: fontTitleSmall,
              //                   fontWeight: FontWeight.w700,
              //                 ),
              //               ),
              //               RichText(
              //                 text: const TextSpan(
              //                   style: TextStyle(
              //                     color: Color(0xff8C8C8C),
              //                     fontWeight: FontWeight.w600,
              //                   ),
              //                   children: [
              //                     TextSpan(
              //                       text: '2',
              //                       style: TextStyle(
              //                         color: primaryPink,
              //                         fontSize: fontTitleSmall,
              //                       ),
              //                     ),
              //                     TextSpan(
              //                       text: '/',
              //                       style: TextStyle(
              //                         fontSize: fontSub,
              //                       ),
              //                     ),
              //                     TextSpan(
              //                       text: '5',
              //                       style: TextStyle(
              //                         fontSize: fontText,
              //                       ),
              //                     ),
              //                     TextSpan(
              //                       text: ' People',
              //                       style: TextStyle(
              //                         fontSize: fontSmall,
              //                       ),
              //                     ),
              //                   ],
              //                 ),
              //               )
              //             ],
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              Container(
                padding: const EdgeInsets.all(2),
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
                child: Container(
                  width: 169,
                  height: 68,
                  decoration: const BoxDecoration(
                    color: Color(0xfffafafa),
                    borderRadius: BorderRadius.all(Radius.circular(36)),
                  ),
                  child: const Center(
                    child: GradientText(
                      text: 'MANAGE DOPIN',
                      style: TextStyle(
                        fontSize: fontText,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

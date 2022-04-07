import 'package:dopin_test_3/config/constans/app_constans.dart';
import 'package:dopin_test_3/utils/network_imag_fade.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserItem extends HookConsumerWidget {
  const UserItem({
    Key? key,
    required this.closIcon,
    this.closIconFunction,
    required this.imageUrl,
    required this.title,
    required this.subTitle,
    this.button,
  }) : super(key: key);
  final bool closIcon;
  final VoidCallback? closIconFunction;
  final String imageUrl;
  final String title;
  final String subTitle;
  final Widget? button;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              if (closIcon)
                InkWell(
                  onTap: closIconFunction,
                  child: const Icon(Icons.close),
                ),
              if (closIcon) const SizedBox(width: 15),
              NetworkImageFade(
                width: 54,
                height: 54,
                imageUrl: imageUrl,
                radius: 54,
              ),
              const SizedBox(width: 10),
              Column(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: fontText,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    subTitle,
                    style: const TextStyle(
                      fontSize: fontText,
                      fontWeight: FontWeight.w500,
                      color: primaryGrey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          if (button != null) button as Widget,
        ],
      ),
    );
  }
}

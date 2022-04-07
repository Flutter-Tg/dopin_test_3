import 'package:dopin_test_3/config/constans/app_constans.dart';
import 'package:dopin_test_3/global_widgets/items/user_item.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ParticioationsTab extends ConsumerWidget {
  const ParticioationsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
      padding: const EdgeInsets.only(bottom: 60),
      itemCount: 6,
      itemBuilder: (context, index) => UserItem(
        closIcon: false,
        closIconFunction: () {},
        imageUrl:
            'https://i.pinimg.com/564x/80/c1/49/80c149b2ec3e716b6487674bed641557.jpg',
        title: 'NiKolai',
        subTitle: '4h ago',
        button: Container(
          width: 96,
          height: 42,
          decoration: const BoxDecoration(
            color: primaryPink,
            borderRadius: BorderRadius.all(
              Radius.circular(42),
            ),
          ),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.phone_enabled,
                size: 24,
                color: Colors.white,
              ),
              SizedBox(width: 8),
              Text(
                'CALL',
                style: TextStyle(
                    fontSize: fontText,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}

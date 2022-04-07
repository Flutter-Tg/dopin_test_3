import 'package:dopin_test_3/config/constans/app_constans.dart';
import 'package:dopin_test_3/global_widgets/items/user_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RequestTab extends ConsumerWidget {
  const RequestTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // i need some custom widget inside Tabbar
    List page = [1, 2, 3, 4, 5];
    return page.isNotEmpty
        ? ListView.builder(
            padding: const EdgeInsets.only(bottom: 60),
            itemCount: page.length,
            itemBuilder: (context, index) => Column(
              children: [
                if (index == 0)
                  Container(
                    height: 105,
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.only(top: 20, bottom: 10),
                    decoration: const BoxDecoration(
                        color: Color(0xffF7F7F7),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Receive Request',
                              style: TextStyle(
                                fontSize: fontText,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Accept recive request \n from yout nearbies',
                              style: TextStyle(
                                fontSize: fontText,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                        Switch(
                          value: true,
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                  ),
                InkWell(
                  onTap: () => context.goNamed('sign'),
                  child: UserItem(
                    closIcon: true,
                    closIconFunction: () {},
                    imageUrl:
                        'https://i.pinimg.com/564x/aa/39/f4/aa39f4215434a477bb032b195ed94c58.jpg',
                    title: 'NiKolai',
                    subTitle: '4h ago',
                    button: Container(
                      width: 96,
                      height: 42,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            primaryPink,
                            primaryBlue,
                          ],
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(42),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'Accept',
                        style: TextStyle(
                          fontSize: fontText,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        : Column(
            children: [
              Container(
                height: 105,
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.only(top: 20, bottom: 10),
                decoration: const BoxDecoration(
                    color: Color(0xffF7F7F7),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Receive Request',
                          style: TextStyle(
                            fontSize: fontText,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Accept receive request \nfrom your nearbies',
                          style: TextStyle(
                            fontSize: fontText,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ],
                ),
              ),
            ],
          );
  }
}

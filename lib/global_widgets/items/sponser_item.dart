import 'package:dopin_test_3/config/constans/app_constans.dart';
import 'package:dopin_test_3/utils/network_imag_fade.dart';
import 'package:dopin_test_3/utils/styles/gradient_text.dart';
import 'package:flutter/material.dart';

class SponserItem extends StatelessWidget {
  const SponserItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
        borderRadius: BorderRadius.all(
          Radius.circular(19),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(17),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(19),
            ),
            color: Color.fromRGBO(255, 255, 255, 0.9)),
        child: Row(
          children: [
            const NetworkImageFade(
              width: 84,
              height: 84,
              imageUrl:
                  'https://i.pinimg.com/564x/7a/53/b6/7a53b6ae10173f474bf201c41e0feea3.jpg',
              radius: 15,
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'STARBUCKS',
                    style: TextStyle(
                      fontSize: fontTitr,
                      fontWeight: FontWeight.w800,
                      height: 1.1,
                    ),
                  ),
                  GradientText(
                    text: 'Sponser of this dopin',
                    style: TextStyle(
                      fontSize: fontTitle,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Kadikoy, Istanbul',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: fontText,
                        fontWeight: FontWeight.w600,
                        color: primaryGrey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

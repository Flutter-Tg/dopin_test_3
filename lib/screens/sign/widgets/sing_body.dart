import 'package:dopin_test_3/config/constans/app_constans.dart';
import 'package:dopin_test_3/utils/styles/gradient_text.dart';
import 'package:flutter/material.dart';

class SingBody extends StatelessWidget {
  final String title;
  final String description;
  final List<Widget> children;
  final VoidCallback? function;
  const SingBody(
      {Key? key,
      required this.title,
      required this.description,
      required this.children,
      this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryWhite,
      appBar: AppBar(
        backgroundColor: primaryWhite,
        elevation: 0,
        centerTitle: true,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: fontTitleSmall,
            fontWeight: FontWeight.w700,
          ),
        ),
        leading: InkWell(
          onTap: function,
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 19,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              const GradientText(
                text: 'Dopin',
                style: TextStyle(
                  fontSize: 51,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                description,
                style: const TextStyle(
                    overflow: TextOverflow.clip,
                    fontSize: fontBanner,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                    List.generate(children.length, (index) => children[index]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:dopin_test_3/config/constans/app_constans.dart';
import 'package:flutter/material.dart';

class InputBox extends StatefulWidget {
  final TextEditingController? textFieldController;
  final String title;
  final Widget child;
  final GlobalKey? formKey;
  const InputBox({
    Key? key,
    this.textFieldController,
    required this.title,
    required this.child,
    this.formKey,
  }) : super(key: key);

  @override
  State<InputBox> createState() => InputBoxState();
}

class InputBoxState extends State<InputBox> {
  bool isError = false;
  void changeErrorStatus(bool errorStatus) {
    setState(() {
      isError = errorStatus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 7),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(
            width: 1, color: isError ? Colors.red : const Color(0xff202020)),
        borderRadius: const BorderRadius.all(Radius.circular(22)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: fontTitle,
                ),
              ),
              isError
                  ? Row(
                      children: [
                        const Icon(Icons.cancel_outlined,
                            color: Colors.red, size: 20),
                        const SizedBox(width: 5),
                        Text(
                          widget.title,
                          style: const TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w500,
                            fontSize: fontText,
                          ),
                        ),
                      ],
                    )
                  : Container(),
            ],
          ),
          const SizedBox(height: 20),
          Form(
            key: widget.formKey,
            // autovalidateMode: AutovalidateMode.always,
            child: widget.child,
          ),
        ],
      ),
    );
  }
}

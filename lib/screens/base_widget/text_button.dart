import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  CustomTextButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);
  String title;
  Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPressed, child: Text(title));
  }
}

import 'package:flutter/material.dart';
import 'package:go_router_practice/utils/dimension.dart';

class CustomTextButton extends StatelessWidget {
  CustomTextButton({Key? key, required this.title, required this.onPressed})
      : super(key: key);
  String title;
  Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: Dimensions.PAGE_SMALL_PADDING),
        child: TextButton(
          onPressed: onPressed,
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                  Colors.cyan)), // Here Im having the error

          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6.0),
            child: Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        ));
  }
}

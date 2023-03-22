import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_practice/screens/base_widget/custom_app_bar.dart';
import 'package:go_router_practice/screens/base_widget/text_button.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        label: "Third Screen",
      ),
      body: Center(
        child: Column(
          children: [
            CustomTextButton(
                title: "Previous",
                onPressed: () {
                  context.go("/second");
                }),
            CustomTextButton(
                title: "Next",
                onPressed: () {
                  context.go("/fourth");
                }),
          ],
        ),
      ),
    );
  }
}

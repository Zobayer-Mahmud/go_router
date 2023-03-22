import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_practice/screens/base_widget/custom_app_bar.dart';
import 'package:go_router_practice/screens/base_widget/text_button.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        label: "Second Screen",
      ),
      body: Center(
        child: Column(
          children: [
            CustomTextButton(
                title: "Previous",
                onPressed: () {
                  context.go("/first");
                }),
            CustomTextButton(
                title: "Next",
                onPressed: () {
                  context.go("/third");
                }),
          ],
        ),
      ),
    );
  }
}

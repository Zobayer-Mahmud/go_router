import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_practice/screens/base_widget/custom_app_bar.dart';
import 'package:go_router_practice/screens/base_widget/text_button.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        label: "First Screen",
      ),
      body: Center(
        child: Column(
          children: [
            CustomTextButton(
                title: "Next",
                onPressed: () {
                  context.go("/second");
                }),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router_practice/screens/base_widget/custom_app_bar.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        label: "First Screen",
      ),
    );
  }
}

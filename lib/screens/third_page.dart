import 'package:flutter/material.dart';
import 'package:go_router_practice/screens/base_widget/custom_app_bar.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        label: "Third Screen",
      ),
    );
  }
}

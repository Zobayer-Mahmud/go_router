import 'package:flutter/material.dart';
import 'package:go_router_practice/screens/base_widget/custom_app_bar.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        label: "Second Screen",
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router_practice/provider/first_screen_provider.dart';
import 'package:go_router_practice/screens/base_widget/custom_app_bar.dart';
import 'package:provider/provider.dart';

class VideoPlayScreen extends StatelessWidget {
  const VideoPlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(label: "Video Play Screen",centerTitle: true,),body: Column(children: [
        Consumer<FirstScreenProvider>(
                  builder: (context, controller, child) {
                return ListView.separated(
                  itemCount: controller.videoList.length,
                  itemBuilder: (context, index) {
                    return Container();
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return Container(height: 100,color: Colors.red,);
                  },
                );
              }),
      ],),
    );
  }
}
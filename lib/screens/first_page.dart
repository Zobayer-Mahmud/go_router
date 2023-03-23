import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_practice/provider/first_screen_provider.dart';
import 'package:go_router_practice/screens/base_widget/custom_app_bar.dart';
import 'package:go_router_practice/screens/base_widget/text_button.dart';
import 'package:go_router_practice/utils/app_const.dart';
import 'package:go_router_practice/utils/dimension.dart';
import 'package:provider/provider.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        label: "First Screen",
      ),
      body: Container(
        padding: EdgeInsets.all(Dimensions.PAGE_DEFAULT_PADDING),
        child: Column(
          children: [
            CustomTextButton(title: "Video Play",onPressed: (){
              context.go(AppConst.VIDEO_PLAY_SCREEN);
            },),
            Expanded(child: Container()),
            Center(
              child: CustomTextButton(
                  title: "Next",
                  onPressed: () {
                    context.go(AppConst.SECOND_PAGE_ROUTE);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_practice/screens/base_widget/custom_app_bar.dart';
import 'package:go_router_practice/screens/base_widget/text_button.dart';
import 'package:go_router_practice/utils/app_const.dart';
import 'package:go_router_practice/utils/dimension.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        label: "Third Screen",
      ),
      body: Container(
        padding: EdgeInsets.all(Dimensions.PAGE_DEFAULT_PADDING),
        child: Column(
          children: [
            Expanded(child: Container()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomTextButton(
                    title: "Previous",
                    onPressed: () {
                      context.go(AppConst.SECOND_PAGE_ROUTE);
                    }),
                CustomTextButton(
                    title: "Next",
                    onPressed: () {
                      context.go(AppConst.FOURTH_PAGE_ROUTE);
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

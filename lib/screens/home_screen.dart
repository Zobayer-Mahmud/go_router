import 'package:flutter/material.dart';
import 'package:go_router_practice/provider/home_provider.dart';

import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Consumer<HomeProvider>(builder: (context, homeProvider, child) {
          return PageView.builder(
            physics: const NeverScrollableScrollPhysics(),
            controller: homeProvider.pageController,
            itemCount: homeProvider.pages.length,
            itemBuilder: (context, index) {
              return homeProvider.pages[homeProvider.currentIndex];
            },
          );
        }),
        bottomNavigationBar: Consumer<HomeProvider>(
          builder: (context, homeProvider, child) {
            return BottomNavigationBar(
              onTap: (int index) {
                homeProvider.changePage(index: index);
              },
              selectedItemColor: Theme.of(context).primaryColor,
              unselectedItemColor: Theme.of(context).textTheme.bodyText1?.color,
              showUnselectedLabels: true,
              currentIndex: homeProvider.currentIndex,
              type: BottomNavigationBarType.fixed,
              items: [
                bottomNavigationBarItem(icon: Icons.home, label: "First"),
                bottomNavigationBarItem(icon: Icons.alarm, label: "Second"),
                bottomNavigationBarItem(icon: Icons.chair, label: "Third"),
                bottomNavigationBarItem(
                    icon: Icons.verified_user, label: "Fourth"),
              ],
            );
          },
        ),
      ),
    );
  }

  BottomNavigationBarItem bottomNavigationBarItem({
    required IconData icon,
    required String label,
  }) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}

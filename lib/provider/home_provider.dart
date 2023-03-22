import 'package:flutter/cupertino.dart';
import 'package:go_router_practice/screens/first_page.dart';
import 'package:go_router_practice/screens/fourth_page.dart';
import 'package:go_router_practice/screens/second_page.dart';
import 'package:go_router_practice/screens/third_page.dart';

class HomeProvider with ChangeNotifier {
  final PageController pageController = PageController();

  int currentIndex = 0;
  void changePage({required int index}) {
    currentIndex = index;
    pageController.jumpToPage(index);
    notifyListeners();
  }

  List<Widget> pages = const [
    FirstScreen(),
    SecondScreen(),
    ThirdScreen(),
    FourthScreen(),
  ];
}

import 'package:go_router/go_router.dart';
import 'package:go_router_practice/screens/first_page.dart';
import 'package:go_router_practice/screens/fourth_page.dart';
import 'package:go_router_practice/screens/home_screen.dart';
import 'package:go_router_practice/screens/second_page.dart';
import 'package:go_router_practice/screens/third_page.dart';
import 'package:go_router_practice/utils/app_const.dart';

class Routes {
  static GoRouter router = GoRouter(routes: [
    GoRoute(
      path: AppConst.HOME_PAGE_ROUTE,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: AppConst.FIRST_PAGE_ROUTE,
      builder: (context, state) => const FirstScreen(),
    ),
    GoRoute(
      path: AppConst.SECOND_PAGE_ROUTE,
      builder: (context, state) => const SecondScreen(),
    ),
    GoRoute(
      path: AppConst.THIRD_PAGE_ROUTE,
      builder: (context, state) => const ThirdScreen(),
    ),
    GoRoute(
      path: AppConst.FOURTH_PAGE_ROUTE,
      builder: (context, state) => const FourthScreen(),
    ),
  ]);
}

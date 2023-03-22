import 'package:go_router/go_router.dart';
import 'package:go_router_practice/screens/first_page.dart';
import 'package:go_router_practice/screens/fourth_page.dart';
import 'package:go_router_practice/screens/home_screen.dart';
import 'package:go_router_practice/screens/second_page.dart';
import 'package:go_router_practice/screens/third_page.dart';

class Routes {
  static GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/first',
      builder: (context, state) => const FirstScreen(),
    ),
    GoRoute(
      path: '/second',
      builder: (context, state) => const SecondScreen(),
    ),
    GoRoute(
      path: '/third',
      builder: (context, state) => const ThirdScreen(),
    ),
    GoRoute(
      path: '/fourth',
      builder: (context, state) => const FourthScreen(),
    ),
  ]);
}

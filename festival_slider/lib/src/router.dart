import 'package:festival_slider/src/page/slider_home_page.dart';
import 'package:festival_slider/src/page/start_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const StartPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const SliderHomePage(),
    ),

  ],
);
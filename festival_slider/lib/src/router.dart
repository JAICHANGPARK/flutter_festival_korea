import 'package:festival_slider/src/page/intro/title_screen.dart';
import 'package:festival_slider/src/page/slider_home_page.dart';
import 'package:go_router/go_router.dart';

import 'page/intro/ready_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const ReadyScreen(),
    ),
    GoRoute(
      path: '/title',
      builder: (context, state) => const TitleScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const SliderHomePage(),
    ),
  ],
);

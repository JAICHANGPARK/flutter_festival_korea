import 'package:festival_slider/src/router.dart';
import 'package:flutter/material.dart';
import 'package:adwaita/adwaita.dart';
import 'package:go_router/go_router.dart';

class FlutterFestivalSliderApp extends StatelessWidget {
  FlutterFestivalSliderApp({Key? key}) : super(key: key);
  final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.system);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (_, ThemeMode currentMode, __) {
        return MaterialApp.router(
          theme: AdwaitaThemeData.light(),
          darkTheme: AdwaitaThemeData.dark(),
          debugShowCheckedModeBanner: false,
          themeMode: currentMode,
          routeInformationParser: router.routeInformationParser,
          routerDelegate: router.routerDelegate,
        );
      },
    );
  }
}

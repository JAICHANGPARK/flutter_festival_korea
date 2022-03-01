import 'package:festival_slider/src/router.dart';
import 'package:festival_slider/src/utils/styles.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:adwaita/adwaita.dart';
import 'package:google_fonts/google_fonts.dart';



class FlutterFestivalSliderApp extends StatelessWidget {
  FlutterFestivalSliderApp({Key? key}) : super(key: key);
  final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.system);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (_, ThemeMode currentMode, __) {
        debugPrint("currentMode: $currentMode");
        return MaterialApp.router(
          theme: themeData,
          debugShowCheckedModeBanner: false,
          routeInformationParser: router.routeInformationParser,
          routerDelegate: router.routerDelegate,
        );
      },
    );
  }
}

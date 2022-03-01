import 'dart:io';

import 'package:festival_slider/src/flutter_festival_slider_app.dart';
import 'package:festival_slider/src/utils/window_size_factor.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:window_size/window_size.dart';
import 'src/utils/window_size_factor.dart';

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
  };
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('Flutter Festival Korea');
    setWindowMaxSize(Size(kWindowMaxWidth, kWindowMaxHeight));
    setWindowMinSize(Size(kWindowMinWidth, kWindowMinHeight));
  }
  runApp(
    ProviderScope(
      child: FlutterFestivalSliderApp(),
    ),
  );
}

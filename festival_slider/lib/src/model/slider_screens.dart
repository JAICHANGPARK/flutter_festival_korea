import 'package:festival_slider/src/page/flutter_installation_screen.dart';
import 'package:festival_slider/src/page/history_of_flutter_embedded_screen.dart';
import 'package:festival_slider/src/page/intro/mission_screen.dart';
import 'package:festival_slider/src/page/intro/slider_index_screen.dart';
import 'package:festival_slider/src/page/rpi4/about_rpi_screen.dart';
import 'package:festival_slider/src/page/rpi_io_screen.dart';
import 'package:festival_slider/src/page/thank_you_screen.dart';
import 'package:flutter/material.dart';

List<Widget> sliderItems = [
  const MissionScreen(),
  SliderIndexScreen(index: 0),
  const AboutRpiScreen(),
  SliderIndexScreen(index: 1),
  const HistoryOfFlutterEmbeddedScreen(),
  SliderIndexScreen(index: 2),
  const FlutterInstallationScreen(),
  SliderIndexScreen(index: 3),
  const RpiIOScreen(),
  SliderIndexScreen(index: 4),
  ThanksScreen(),
];
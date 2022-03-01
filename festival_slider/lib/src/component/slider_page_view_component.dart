import 'package:festival_slider/src/page/flutter_installation_screen.dart';
import 'package:festival_slider/src/page/history_of_flutter_embedded_screen.dart';
import 'package:festival_slider/src/page/intro/mission_screen.dart';
import 'package:festival_slider/src/page/intro/slider_index_screen.dart';
import 'package:festival_slider/src/page/rpi4/about_rpi_screen.dart';
import 'package:festival_slider/src/provider/slide_page_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

List<Widget> sliderItems = [
  const MissionScreen(),
  SliderIndexScreen(index: 0),
  const AboutRpiScreen(),
  SliderIndexScreen(index: 1),
  const HistoryOfFlutterEmbeddedScreen(),
  SliderIndexScreen(index: 2),
  FlutterInstallationScreen(),
];

class SliderPageViewComponent extends ConsumerWidget {
  const SliderPageViewComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final controller = ref.watch(sliderPageController);
    return PageView.builder(
      onPageChanged: (idx) {},
      controller: controller,
      itemCount: sliderItems.length,
      itemBuilder: (context, index) {
        return sliderItems[index];
      },
    );
  }
}

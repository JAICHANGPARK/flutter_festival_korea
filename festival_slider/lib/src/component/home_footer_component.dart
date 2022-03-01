import 'package:festival_slider/src/model/slider_screens.dart';
import 'package:festival_slider/src/provider/slide_page_provider.dart';
import 'package:festival_slider/src/provider/timer_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

List<Widget> homeFooterItems = [
  Consumer(builder: (BuildContext context, WidgetRef ref, Widget? child) {
    final timer = ref.watch(timerProvider);
    return Text(timer);
  }),
  Consumer(builder: (BuildContext context, WidgetRef ref, Widget? child) {
    final index = ref.watch(sliderPageIndexProvider);
    return Text("$index / ${sliderItems.length}");
  }),
  Consumer(builder: (BuildContext context, WidgetRef ref, Widget? child) {
    final controller = ref.watch(sliderPageController);
    return IconButton(
      onPressed: () {
        controller.jumpToPage(0);
        ref.read(sliderPageIndexProvider.notifier).state = 0;
      },
      icon: const Icon(Icons.flutter_dash),
    );
  }),
  Consumer(
    builder: (BuildContext context, WidgetRef ref, Widget? child) {
      final index = ref.watch(sliderPageIndexProvider);
      final controller = ref.watch(sliderPageController);
      return IconButton(
        onPressed: () {
          int _idx = index;
          _idx--;
          if (_idx < 1) {
            _idx = 0;
          }
          ref.read(sliderPageIndexProvider.notifier).state = _idx;
          controller.jumpToPage(_idx);
        },
        icon: const Icon(Icons.navigate_before),
      );
    },
  ),
  Consumer(
    builder: (BuildContext context, WidgetRef ref, Widget? child) {
      final index = ref.watch(sliderPageIndexProvider);
      final controller = ref.watch(sliderPageController);
      return IconButton(
        onPressed: () {
          int _idx = index;
          _idx++;
          if (_idx > sliderItems.length) {
            _idx = sliderItems.length;
          }
          ref.read(sliderPageIndexProvider.notifier).state = _idx;
          controller.jumpToPage(_idx);
        },
        icon: const Icon(Icons.navigate_next),
      );
    },
  ),
];

class HomeFooterComponent extends StatelessWidget {
  const HomeFooterComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

import 'dart:io';

import 'package:festival_slider/src/component/home_footer_component.dart';
import 'package:festival_slider/src/component/slider_page_view_component.dart';
import 'package:festival_slider/src/page/intro/mission_screen.dart';
import 'package:festival_slider/src/page/intro/slider_index_screen.dart';
import 'package:festival_slider/src/page/rpi4/about_rpi_screen.dart';
import 'package:festival_slider/src/provider/slide_page_provider.dart';
import 'package:festival_slider/src/provider/timer_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SliderHomePage extends ConsumerWidget {
  const SliderHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final _selectedIndex = ref.watch(sliderNavIndex);
    final index = ref.watch(sliderPageIndexProvider);
    ref.watch(timerProvider.notifier).start();
    return Scaffold(
      body: Row(
        children: [
          index == 0
              ? NavigationRail(
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.info_outlined),
                  ),
                  selectedIndex: _selectedIndex,
                  onDestinationSelected: (int index) {
                    if (index == 1 && !(Platform.isLinux)) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return const AlertDialog(
                              content: Text("지원하지 않는 플랫폼입니다."),
                            );
                          });
                      return;
                    }
                    ref.read(sliderNavIndex.notifier).state = index;
                  },
                  labelType: NavigationRailLabelType.all,
                  destinations: const [
                    NavigationRailDestination(
                      icon: Icon(Icons.home_outlined),
                      selectedIcon: Icon(Icons.home),
                      label: Text('Home'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.apps_outlined),
                      selectedIcon: Icon(Icons.apps),
                      label: Text('Rpi4'),
                    ),
                  ],
                )
              : Container(),
          const Expanded(
            child: SliderPageViewComponent(),
          )
        ],
      ),
      persistentFooterButtons: homeFooterItems,
    );
  }
}

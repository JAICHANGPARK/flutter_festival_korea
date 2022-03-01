import 'package:festival_slider/src/model/slider_screens.dart';
import 'package:festival_slider/src/provider/slide_page_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SliderPageViewComponent extends ConsumerWidget {
  const SliderPageViewComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    final controller = ref.watch(sliderPageController);
    return PageView.builder(
      physics: const NeverScrollableScrollPhysics(),
      onPageChanged: (idx) {},
      controller: controller,
      itemCount: sliderItems.length,
      itemBuilder: (context, index) {
        return sliderItems[index];
      },
    );
  }
}

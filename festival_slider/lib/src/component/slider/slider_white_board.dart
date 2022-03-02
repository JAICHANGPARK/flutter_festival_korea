import 'package:festival_slider/src/utils/asset_manager.dart';
import 'package:flutter/material.dart';

class SliderWhiteBoard extends StatelessWidget {
  Widget child;

  SliderWhiteBoard({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 0,
              child: child,
            ),
            Positioned(
              right: 16,
              bottom: 16,
              child: Image.asset(
                AssetManager.kSliderLogoColor,
                height: 120,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

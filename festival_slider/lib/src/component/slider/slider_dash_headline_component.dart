import 'package:festival_slider/src/utils/asset_manager.dart';
import 'package:festival_slider/src/utils/styles.dart';
import 'package:flutter/material.dart';

class SliderDashHeadlineComponent extends StatelessWidget {
  SliderDashHeadlineComponent({Key? key, required this.child}) : super(key: key);
  Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            right: 0,
            bottom: 0,
            child: Image.asset(
              AssetManager.kSliderBackgroundWithDash,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 64,
            right: 64,
            bottom: 120,
            child: Container(
              width: MediaQuery.of(context).size.width / 1.6,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                color: kBackgroundDark,
              ),
              child: child,
            ),
          ),
          Positioned(
            child: Image.asset(
              AssetManager.kSliderLogoColor,
              width: MediaQuery.of(context).size.width / 3.5,
            ),
            right: 48,
            bottom: 8,
          )
        ],
      ),
    );
  }
}

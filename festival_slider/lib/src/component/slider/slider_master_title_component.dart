import 'package:festival_slider/src/utils/asset_manager.dart';
import 'package:flutter/material.dart';

class SliderMasterTitleComponent extends StatelessWidget {
  SliderMasterTitleComponent({Key? key, required this.child}) : super(key: key);
  Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            left: -0,
            right: -0,
            bottom: 0,
            top: 0,
            child: Image.asset(
              AssetManager.kSliderBackgroundImage,
              fit: BoxFit.cover,
            )),
        Positioned(
            left: -0,
            right: -0,
            bottom: 0,
            top: 0,
            child: Image.asset(
              AssetManager.kSliderBackgroundEarthImage,
              fit: BoxFit.cover,
            )),
        Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.all(72.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: child,
              ),
            )),
        Positioned(
          right: 0,
          bottom: 0,
          child: Image.asset(
            AssetManager.kSliderLuggageImage,
            height: MediaQuery.of(context).size.height / 1.3,
          ),
        ),
      ],
    );
  }
}

import 'package:festival_slider/src/utils/asset_manager.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import '../component/slider/slider_master_title_component.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SliderMasterTitleComponent(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(AssetManager.kSliderLogoColor, height: 120,),
              Text("[알잘딱깔센] Flutter Embedded"),
              Text("데스크톱을 넘어 임베디드까지")

            ],
          ),
        ),
      )
    );
  }
}

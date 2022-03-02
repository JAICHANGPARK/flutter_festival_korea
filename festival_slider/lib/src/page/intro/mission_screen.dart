import 'package:flutter/material.dart';

import '../../component/slider/slider_dash_headline_component.dart';

class MissionScreen extends StatelessWidget {
  const MissionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliderDashHeadlineComponent(
      child: Padding(
        padding: const EdgeInsets.all(64.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Mission",
              style: TextStyle(
                fontSize: 120,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 128,
            ),
            Text(
              "1. Raspberry Pi 4 Flutter 설치하기",
              style: Theme.of(context).textTheme.headline3?.copyWith(
                    color: Colors.white,
                  ),
            ),
            SizedBox(
              height: 48,
            ),
            Text(
              "2. Raspberry Pi 4 GPIO 앱 만들기",
              style: Theme.of(context).textTheme.headline3?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

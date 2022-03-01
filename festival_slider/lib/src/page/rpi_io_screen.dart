import 'package:festival_slider/src/component/slider/slider_white_board.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RpiIOScreen extends StatelessWidget {
  const RpiIOScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliderWhiteBoard(
        child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(72.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                launch("https://www.raspberrypi.com/documentation/computers/os.html#gpio-and-the-40-pin-header");
              },
              child: Image.network(
                "https://www.raspberrypi.com/documentation/computers/images/GPIO-Pinout-Diagram-2.png",
                height: 480,
              ),
            ),
            Image.network(
              "https://www.raspberrypi.com/documentation/computers/images/GPIO.png",
              height: 480,
            ),

          ],
        ),
      ),
    ));
  }
}

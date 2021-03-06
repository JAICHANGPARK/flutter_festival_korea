import 'package:festival_slider/src/component/slider/slider_white_board.dart';
import 'package:festival_slider/src/service/launcher_api.dart';
import 'package:festival_slider/src/utils/styles.dart';
import 'package:flutter/material.dart';

class RpiOSComponent extends StatelessWidget {
  const RpiOSComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliderWhiteBoard(
      child: Scrollbar(
        child: ListView(
          children: [
            const SizedBox(
              height: 64,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SelectableText(
                "Operating system images",
                style: Theme.of(context).textTheme.headline3?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: GestureDetector(
                onTap: () {
                  launchURL("https://www.raspberrypi.com/software/operating-systems/");
                },
                child: Text(
                  "https://www.raspberrypi.com/software/operating-systems/",
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                        decoration: TextDecoration.underline,
                        color: kSecondaryColor,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(
              height: 64,
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: SelectableText(
                "Raspberry Pi Imager",
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 64,
            ),
            Image.asset(
              "assets/img/rpi_imager_download.png",
              height: 360,
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: SelectableText(
                "Raspberry Pi Imager??? ???????????? ????????? ?????? ???????????? ?????????.",
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 64,
            ),
            Image.asset(
              "assets/img/pi_imager.png",
              height: 360,
            ),
            const SizedBox(
              height: 64,
            ),
            Image.asset(
              "assets/img/pi_imager_1.png",
              height: 480,
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: SelectableText(
                "???????????? ?????? ????????? ????????? ????????? ?????? ??????????????? ????????? ??? ????????????.\n"
                "????????? ?????????????????? OS??? ?????????????????? ???????????????.",
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 64,
            ),
            Image.asset(
              "assets/img/pi_imager_2.png",
              height: 480,
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: SelectableText(
                "????????? 32Bit??? ?????? 64Bit ??????????????? ??????????????????.\n"
                "64Bit ??????????????? ???????????? ????????? ?????? ?????? ??????????????? (22???2???).",
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 36,
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: SelectableText(
                "??????????????????4??? 64Bit ????????? ?????? ????????? ????????? ???????????? ????????? ??? ????????????.",
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: GestureDetector(
                onTap: () {
                  launchURL("https://www.raspberrypi.com/news/raspberry-pi-os-64-bit/");
                },
                child: Text(
                  "1. https://www.raspberrypi.com/news/raspberry-pi-os-64-bit/",
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                        decoration: TextDecoration.underline,
                        color: kSecondaryColor,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: GestureDetector(
                onTap: () {
                  launchURL("https://forums.raspberrypi.com/viewtopic.php?t=275370");
                },
                child: Text(
                  "2. https://forums.raspberrypi.com/viewtopic.php?t=275370",
                  style: Theme.of(context).textTheme.headline4?.copyWith(
                        decoration: TextDecoration.underline,
                        color: kSecondaryColor,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Image.asset(
              "assets/img/pi_imager_3.png",
              height: 480,
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: SelectableText(
                "????????????????????? ????????? ??????????????? ??????????????????.",
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.center,
              ),
            ),
            Image.asset(
              "assets/img/pi_imager_4.png",
              height: 480,
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: SelectableText(
                "???????????? ????????? ???????????? ????????? ???????????? ?????? ????????? ??????"
                "\n ???????????? ????????? ??????????????? ???????????????."
                "\n ????????? ????????? ???????????? ??? ??????????????? ?????????.",
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 64,
            ),
          ],
        ),
      ),
    );
  }
}

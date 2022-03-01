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
                style: Theme.of(context).textTheme.headline5?.copyWith(
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
                  style: Theme.of(context).textTheme.headline5?.copyWith(
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
                style: Theme.of(context).textTheme.headline5,
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
                "Raspberry Pi Imager를 사용하는 머신에 맞게 다운로드 합니다.",
                style: Theme.of(context).textTheme.headline5,
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
                "라즈비안 뿐만 아니라 다양한 리눅스 기반 운영체제를 사용할 수 있습니다.\n"
                "오늘은 라즈베리파이 OS를 설치해보도록 하겠습니다.",
                style: Theme.of(context).textTheme.headline5,
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
                "여기서 32Bit가 아닌 64Bit 운영체제를 선택해줍니다.\n"
                "64Bit 운영체제를 지원하게 된지는 얼마 되지 않았습니다 (22년2월).",
                style: Theme.of(context).textTheme.headline5,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 36,
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: SelectableText(
                "라즈베리파이4의 64Bit 지원에 대한 내용은 아래의 링크에서 확인할 수 있습니다.",
                style: Theme.of(context).textTheme.headline5,
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
                  style: Theme.of(context).textTheme.headline5?.copyWith(
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
                  style: Theme.of(context).textTheme.headline5?.copyWith(
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
                "라즈베리파이에 사용할 저장장치를 선택해줍니다.",
                style: Theme.of(context).textTheme.headline5,
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
                "운영체제 선택과 저장장치 선택이 끝났다면 쓰기 버튼을 눌러"
                "\n 운영체제 파일을 저장장치에 복사합니다."
                "\n 사전에 중요한 데이터는 꼭 백업하도록 합니다.",
                style: Theme.of(context).textTheme.headline5,
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

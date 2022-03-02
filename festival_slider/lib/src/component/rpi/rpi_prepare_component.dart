import 'package:festival_slider/src/component/slider/slider_white_board.dart';
import 'package:festival_slider/src/utils/styles.dart';
import 'package:flutter/material.dart';

class RpiPrepareComponent extends StatelessWidget {
  const RpiPrepareComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliderWhiteBoard(
      child: Padding(
        padding: const EdgeInsets.all(64.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "사전 준비사항",
              style: Theme.of(context).textTheme.headline3?.copyWith(
                    color: kSecondaryColor,
                    fontWeight: FontWeight.bold,
                fontSize: 94
                  ),
            ),
            const SizedBox(
              height: 94,
            ),
            SelectableText(
              "1. 출력장치: 모니터 또는 터치 디스플레이",
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(
              height: 24,
            ),
            SelectableText(
              "2. 입력장치: 키보드 & 마우스",
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(
              height: 24,
            ),
            SelectableText(
              "3. 저장장치: Micro SD 카드 32G 이상",
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(
              height: 24,
            ),
            SelectableText(
              "4. HDMI 케이블 & 마이크로 HDMI 케이블 (모델에따라 상이)",
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(
              height: 24,
            ),
            SelectableText(
              "5. 유선 또는 무선 인터넷",
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(
              height: 24,
            ),
            SelectableText(
              "6. 브레드보드, 스위치, 케이블 등등 (옵션)",
              style: Theme.of(context).textTheme.headline3,
            ),
          ],
        ),
      ),
    );
  }
}

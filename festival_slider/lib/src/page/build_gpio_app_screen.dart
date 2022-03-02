import 'package:festival_slider/src/component/code_container.dart';
import 'package:festival_slider/src/component/rpi/rpi_gpio_simple_reader_component.dart';
import 'package:festival_slider/src/component/slider/slider_white_board.dart';
import 'package:festival_slider/src/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BuildGpioAppScreen extends StatelessWidget {
  const BuildGpioAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliderWhiteBoard(
      child: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            TabBar(
              labelColor: kSecondaryColor,
              isScrollable: true,
              labelStyle: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              indicatorWeight: 6,
              tabs: const [
                Tab(
                  text: "Aim",
                ),
                Tab(
                  text: "Dev Env",
                ),
                Tab(
                  text: "ffi Package",
                ),
                Tab(
                  text: "Result",
                )
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(72.0),
                child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "기존 불편한 점",
                          style: Theme.of(context).textTheme.headline2?.copyWith(
                            fontSize: 64
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          "1. Raspberry Pi(줄여서 Rpi) GPIO를 설정하고 I/O의 전압상태를 모니터링 하기 복잡하고 불편함.",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Text(
                          "2. raspi-gpio를 가지고 모니터링 하기 위한 사용자 친화적인 프로그램구현이 어려움.",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Text(
                          "3. c/c++&python에 지식이 없다면 별도로 공부를 진행해야함.",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        const SizedBox(
                          height: 42,
                        ),
                        Text(
                          "목표",
                          style: Theme.of(context).textTheme.headline2?.copyWith(
                              fontSize: 64
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          "1. Dart와 Flutter만을 가지고 사용자 친화적인 GPIO 모니터링 앱을 개발하고자 함.",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Text(
                          "2. Flutter는 UI toolkit으로 임베디스 시스템 하드웨어에 접근하려면 ffi를 통해 직접 "
                          "인터페이스를 개발하거나 패키지를 사용해야 함.",
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Text(
                          "3. 생산성",
                          style: Theme.of(context).textTheme.headline4,
                        )
                      ],
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "1. Visual Studio Code",
                              style: Theme.of(context).textTheme.headline4,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "라즈베리파이도 VSC를 지원합니다. 하지만 속도가 느리기 때문에 인내심이 다소 필요합니다.",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ),
                          const Divider(height: 120,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "2. Flutter Package 설치",
                              style: Theme.of(context).textTheme.headline4,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Visual Studio Code용 Flutter Package를 설치합니다.",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "1. foreign function interface (ffi)",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3
                                  ?.copyWith(color: kSecondaryColor),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "https://api.dart.dev/dev/2.17.0-157.0.dev/dart-ffi/dart-ffi-library.html",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ),
                          const Divider(height: 120,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "2. RPI GPIO Package",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3
                                  ?.copyWith(color: kSecondaryColor),
                            ),
                          ),
                          Image.asset(
                            "assets/img/pub_dev.png",
                            height: 240,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "flutter package를 검색하기 위해 pub.dev 사이트에 접속합니다.",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "flutter_gpiod Package를 활용합니다.",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ),
                          Image.asset(
                            "assets/img/pub_gpiod.png",
                            height: 480,
                          ),
                          const Divider(height: 120,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "3. pubspec.yaml에 패키지 추가",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3
                                  ?.copyWith(color: kSecondaryColor),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CodeContainer(
                                code: "flutter_gpiod: ^0.4.0",
                                fileName: "pubspec.yaml",
                              )),
                          const Divider(height: 120,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "4. 칩 정보 확인하기",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3
                                  ?.copyWith(color: kSecondaryColor),
                            ),
                          ),
                          Image.asset(
                            "assets/img/code/code_01.png",
                            height: 380,
                          ),
                          const Divider(height: 120,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "5. 핀(I/O) 상태 확인하기",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3
                                  ?.copyWith(color: kSecondaryColor),
                            ),
                          ),
                          Image.asset(
                            "assets/img/code/code_02.png",
                            height: 380,
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          Image.asset(
                            "assets/img/code/code_03.png",
                            // height: 380,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "raspi-gpio를 활용할 경우 아래와 같이 터미널에 입력하면 "
                              "핀 상태를 확인할 수 있습니다.",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          Image.asset(
                            "assets/img/rpi_pinout.png",
                            height: 480,
                            // height: 380,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "핀 번호는 아래의 사이트에서 참고하면 좋습니다.",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              launch("https://pinout.xyz/");
                            },
                            child: Center(
                              child: Text(
                                "https://pinout.xyz/",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    ?.copyWith(
                                      decoration: TextDecoration.underline,
                                      color: kSecondaryColor,
                                    ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          const Divider(height: 120,),
                          const SizedBox(
                            height: 64,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "6. 핀 출력 설정하기",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3
                                  ?.copyWith(color: kSecondaryColor),
                            ),
                          ),
                          Image.asset(
                            "assets/img/code/code_04.png",
                          ),
                          const SizedBox(
                            height: 64,
                          ),
                          const Divider(height: 120,),
                          const SizedBox(
                            height: 64,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "7. 핀 입력 설정하기",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline3
                                  ?.copyWith(color: kSecondaryColor),
                            ),
                          ),
                          Image.asset(
                            "assets/img/code/code_05.png",
                          ),
                          const SizedBox(
                            height: 64,
                          ),
                        ],
                      ),
                    ),
                    const RpiGpioSimpleReaderComponent(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

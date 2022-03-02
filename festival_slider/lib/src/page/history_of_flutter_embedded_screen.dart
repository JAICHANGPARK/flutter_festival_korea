import 'package:festival_slider/src/component/slider/slider_white_board.dart';
import 'package:festival_slider/src/service/launcher_api.dart';
import 'package:festival_slider/src/utils/styles.dart';
import 'package:flutter/material.dart';

class HistoryOfFlutterEmbeddedScreen extends StatelessWidget {
  const HistoryOfFlutterEmbeddedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliderWhiteBoard(
        child: PageView(
      scrollDirection: Axis.horizontal,
      children: [
        Padding(
          padding: const EdgeInsets.all(64.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "0. Flutter 이전 임베디드 GUI 툴킷(toolkit)",
                style: Theme.of(context).textTheme.headline3?.copyWith(
                      color: kSecondaryColor,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Image.asset(
                        "assets/img/qt_logo.png",
                        height: 320,
                      )),
                      const SizedBox(
                        width: 32,
                      ),
                      Expanded(
                          child: Image.asset(
                        "assets/img/gtk_logo.png",
                        height: 320,
                      )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(64.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "1. Flutter를 임베디드 시스템에 사용할 수 있을까?",
                  style: Theme.of(context).textTheme.headline3?.copyWith(
                        color: kSecondaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    "🎯 2018년 medium의 Flutter on Raspberry Pi (mostly) from scratch 글에서\n"
                    "\"라즈베리파이도 플러터를 사용할 수 있음\"을 확인할 수 있음.",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
                Center(
                  child: Image.asset(
                    "assets/img/blog_01.png",
                    height: 600,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: GestureDetector(
                    onTap: () {
                      launchURL("https://medium.com/flutter/flutter-on-raspberry-pi-mostly-from-scratch-2824c5e7dcb1");
                    },
                    child: Center(
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
                ),
                const SizedBox(
                  height: 64,
                ),
              ],
            ),
          ),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(64.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "2. Flutter Engine",
                  style: Theme.of(context).textTheme.headline3?.copyWith(
                        color: kSecondaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  "🎯 Flutter Engine을 수정, 포팅해서 사용하여 ARM64 아키텍처 시스템에서 "
                  "구동이 가능하도록 커스터마이징 작업을 진행.",
                  style: Theme.of(context).textTheme.headline4,
                ),
                const SizedBox(
                  height: 64,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Center(
                    child: Image.network(
                      "https://docs.flutter.dev/assets/images/docs/arch-overview/archdiagram.png",
                      height: 420,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 64,
                ),
                Text(
                  "분명한 어려움이 존재 ",
                  style: Theme.of(context).textTheme.headline2,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    "임베디드 시스템에 대한 진입장벽이 크고 "
                    "Flutter를 적용하기에는 빌드 및 포팅하는 과정이 복잡하고 어려움.",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    "Toolchain(LLVM등)에 대한 이해와 linux GUI 시스템에 대한 이해 등등",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ],
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                "assets/img/raccoon.jpg",
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(64.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 240,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(64.0),
                        child: Image.asset(
                          "assets/img/sony_logo.png",
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Image.asset("assets/img/toyota_logo.png"),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(64.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/img/engine_pr_01.png",
                  height: 420,
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: GestureDetector(
                    onTap: () {
                      launchURL("https://github.com/flutter/engine/pulls?q=arm64");
                    },
                    child: Center(
                      child: Text(
                        "https://github.com/flutter/engine/pulls?q=arm64",
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                              decoration: TextDecoration.underline,
                              color: kSecondaryColor,
                            ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Divider(),
                Image.asset(
                  "assets/img/engine_pr_02.png",
                  height: 420,
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: GestureDetector(
                    onTap: () {
                      launchURL("https://github.com/flutter/engine/pull/20254");
                    },
                    child: Center(
                      child: Text(
                        "https://github.com/flutter/engine/pull/20254",
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                              decoration: TextDecoration.underline,
                              color: kSecondaryColor,
                            ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Divider(),
                Image.asset(
                  "assets/img/engine_pr_03.png",
                  height: 420,
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: GestureDetector(
                    onTap: () {
                      launchURL("https://github.com/sony/flutter-embedded-linux");
                    },
                    child: Center(
                      child: Text(
                        "https://github.com/sony/flutter-embedded-linux",
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                              decoration: TextDecoration.underline,
                              color: kSecondaryColor,
                            ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Divider(),
                Image.asset(
                  "assets/img/buildroot_pr_01.png",
                  height: 240,
                ),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: GestureDetector(
                    onTap: () {
                      launchURL("https://github.com/flutter/buildroot/pulls?q=390");
                    },
                    child: Center(
                      child: Text(
                        "https://github.com/flutter/buildroot/pulls?q=390",
                        style: Theme.of(context).textTheme.headline6?.copyWith(
                              decoration: TextDecoration.underline,
                              color: kSecondaryColor,
                            ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Text(
                  "🎯 우선, 임베디드에 적용하기 위해서는 Linux 시스템 & 64비트 아키텍처를 만족해야 한다.",
                  style: Theme.of(context).textTheme.headline4,
                ),
                SizedBox(
                  height: 72,
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}

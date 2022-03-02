import 'package:festival_slider/src/component/slider/slider_white_board.dart';
import 'package:festival_slider/src/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlutterInstallationScreen extends StatefulWidget {
  const FlutterInstallationScreen({Key? key}) : super(key: key);

  @override
  _FlutterInstallationScreenState createState() => _FlutterInstallationScreenState();
}

class _FlutterInstallationScreenState extends State<FlutterInstallationScreen> {
  @override
  Widget build(BuildContext context) {
    return SliderWhiteBoard(
      child: DefaultTabController(
        length: 5,
        child: Column(
          children: [
            SizedBox(
              height: 64,
              child: TabBar(
                labelColor: kSecondaryColor,
                indicatorSize: TabBarIndicatorSize.label,
                isScrollable: true,
                indicatorWeight: 6,
                tabs: const [
                  Tab(
                    text: "OS Setup",
                  ),
                  Tab(
                    text: "Install Flutter",
                  ),
                  Tab(
                    text: "Flutter Setup",
                  ),
                  Tab(
                    text: "Run Flutter",
                  ),
                  Tab(
                    text: "Web",
                  ),
                ],
                labelStyle: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: TabBarView(physics: const NeverScrollableScrollPhysics(), children: [
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(72.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Raspberry Pi4 OS설정",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                        Image.asset(
                          "assets/img/os_init_01.png",
                          height: 480,
                        ),
                        const Divider(height: 120,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "1. 시스템 언어 설정",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                        Image.asset(
                          "assets/img/os_init_02.png",
                          height: 480,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Image.asset(
                          "assets/img/os_init_03.png",
                          height: 480,
                        ),
                        const Divider(height: 120,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "2. 와이파이 설정",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Ethernet만 사용하는 환경이라면 넘어가도 무관합니다.",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Image.asset(
                          "assets/img/os_init_04.png",
                          height: 480,
                        ),
                        const Divider(height: 120,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "3. 시스템 소프트웨어 업데이트",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "여기서는 apt update & apt upgrade 작업을 진행합니다.",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Image.asset(
                          "assets/img/os_init_05.png",
                          height: 480,
                        ),
                        Image.asset(
                          "assets/img/os_init_06.png",
                          height: 480,
                        ),
                        const Divider(height: 120,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "4. 시스템 설정 완료!",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "SSH 또는 VNC를 설정하여 다른 머신에서 개발을 진행해도 됩니다.",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Image.asset(
                          "assets/img/os_init_07.png",
                          height: 480,
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(72.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "1. Flutter 공식 페이지 접속",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "라즈베리파이에는 기본적으로 Chromium 이 설치되어 있습니다.",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "오른쪽 상단의 Get started 버튼을 선택하여 설치 가이드 페이지에 진입합니다.",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Image.asset(
                          "assets/img/flutter_install_01.png",
                          height: 480,
                        ),
                        const Divider(height: 120,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "2. 리눅스 머신 전용 설치",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "리눅스를 선택합니다.",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Image.asset(
                          "assets/img/flutter_install_02.png",
                          height: 480,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "기본적으로 snap이 설치되어 있지 않아서 sudo snap install flutter --classic 명령어가"
                            " 작동하지 않습니다.",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Image.asset(
                          "assets/img/flutter_install_05.png",
                          height: 480,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "sudo apt install snap 으로 snap 패키지를 설치해줍니다.",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Image.asset(
                          "assets/img/flutter_install_03.png",
                          height: 480,
                        ),
                        Image.asset(
                          "assets/img/flutter_install_04.png",
                          height: 480,
                        ),
                        const Divider(height: 120,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "3. 다시 설치 시도하기",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                        Image.asset(
                          "assets/img/flutter_install_07.png",
                          height: 480,
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(72.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "1. SDK PATH 설정 ",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "설치가 완료되었다면 sdk 경로 설정을 해야합니다. ",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "flutter sdk-path 를 실행하여 경로를 설정해줍니다.",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Image.asset(
                          "assets/img/flutter_install_09.png",
                          height: 480,
                        ),
                        Image.asset(
                          "assets/img/flutter_install_10.png",
                          height: 480,
                        ),
                        const Divider(height: 120,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "2. Flutter Docker 로 점검하기",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "설치한 파일들이 이상이 없는지 터미널에 flutter doctor -v 를 입력하여 "
                            "설치 상태를 검사합니다. 빠진 부분이 있다면 자동으로 설치가 진행됩니다.",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Image.asset(
                          "assets/img/flutter_install_11.png",
                          height: 480,
                        ),
                        const Divider(height: 120,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "3. Linux Desktop Config",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "flutter config --enable-linux-desktop 을 입력합니다.",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Image.asset(
                          "assets/img/flutter_install_12.png",
                          height: 480,
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(72.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "1. 프로젝트 생성하기",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "flutter create myapp 을 입력하여 테스트용 샘플 프로젝트를 생성합니다.",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Image.asset(
                          "assets/img/flutter_install_13.png",
                          height: 480,
                        ),
                        const Divider(height: 120,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "2. 플러터 실행하기",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "생성된 프로젝트 디렉토리에 접근하여 flutter run을 입력해 실행합니다.",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "여기서 리눅스 데스크톱에 필요한 툴을 추가로 다운로드 하고 빌드과정을 진행합니다.",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Image.asset(
                          "assets/img/flutter_install_14.png",
                          height: 480,
                        ),
                        const Divider(height: 120,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "3. 카운트 동작 확인하기",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "빌드가 완료되면 데스크톱 앱이 실행됩니다.\n"
                            "(다소 시간이 소요될 수 있습니다.)",
                            style: Theme.of(context).textTheme.headline6,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Image.asset(
                          "assets/img/flutter_install_15.png",
                          height: 480,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Floating Action Button을 눌러보면서 카운터 숫자가 올라가는지 확인해봅니다.",
                            style: Theme.of(context).textTheme.headline6,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Image.asset(
                          "assets/img/flutter_install_16.png",
                          height: 480,
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(72.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "1. 웹 설정 후 구동 확인",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "chrome 경로 설정과 Flutter config에서 웹 설정을 활성화 합니다.",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Image.asset(
                          "assets/img/flutter_install_17.png",
                          height: 480,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "실행할 플랫폼을 설정합니다. 이번에는 웹으로 설정하고 실행해봅니다."
                            "\n(빌드 시간이 다소 소요될 수 있습니다.)",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Image.asset(
                          "assets/img/flutter_install_18.png",
                          height: 480,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Flutter web도 문제없이 라즈베리파이4 환경에서 실행됨을 확인할 수 있습니다.",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

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
                            "Raspberry Pi4 OS??????",
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
                            "1. ????????? ?????? ??????",
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
                            "2. ???????????? ??????",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Ethernet??? ???????????? ??????????????? ???????????? ???????????????.",
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
                            "3. ????????? ??????????????? ????????????",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "???????????? apt update & apt upgrade ????????? ???????????????.",
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
                            "4. ????????? ?????? ??????!",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "SSH ?????? VNC??? ???????????? ?????? ???????????? ????????? ???????????? ?????????.",
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
                            "1. Flutter ?????? ????????? ??????",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "???????????????????????? ??????????????? Chromium ??? ???????????? ????????????.",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "????????? ????????? Get started ????????? ???????????? ?????? ????????? ???????????? ???????????????.",
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
                            "2. ????????? ?????? ?????? ??????",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "???????????? ???????????????.",
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
                            "??????????????? snap??? ???????????? ?????? ????????? sudo snap install flutter --classic ????????????"
                            " ???????????? ????????????.",
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
                            "sudo apt install snap ?????? snap ???????????? ??????????????????.",
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
                            "3. ?????? ?????? ????????????",
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
                            "1. SDK PATH ?????? ",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "????????? ?????????????????? sdk ?????? ????????? ???????????????. ",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "flutter sdk-path ??? ???????????? ????????? ??????????????????.",
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
                            "2. Flutter Docker ??? ????????????",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "????????? ???????????? ????????? ????????? ???????????? flutter doctor -v ??? ???????????? "
                            "?????? ????????? ???????????????. ?????? ????????? ????????? ???????????? ????????? ???????????????.",
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
                            "flutter config --enable-linux-desktop ??? ???????????????.",
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
                            "1. ???????????? ????????????",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "flutter create myapp ??? ???????????? ???????????? ?????? ??????????????? ???????????????.",
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
                            "2. ????????? ????????????",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "????????? ???????????? ??????????????? ???????????? flutter run??? ????????? ???????????????.",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "????????? ????????? ??????????????? ????????? ?????? ????????? ???????????? ?????? ??????????????? ???????????????.",
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
                            "3. ????????? ?????? ????????????",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "????????? ???????????? ???????????? ?????? ???????????????.\n"
                            "(?????? ????????? ????????? ??? ????????????.)",
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
                            "Floating Action Button??? ??????????????? ????????? ????????? ??????????????? ??????????????????.",
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
                            "1. ??? ?????? ??? ?????? ??????",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "chrome ?????? ????????? Flutter config?????? ??? ????????? ????????? ?????????.",
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
                            "????????? ???????????? ???????????????. ???????????? ????????? ???????????? ??????????????????."
                            "\n(?????? ????????? ?????? ????????? ??? ????????????.)",
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
                            "Flutter web??? ???????????? ??????????????????4 ???????????? ???????????? ????????? ??? ????????????.",
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

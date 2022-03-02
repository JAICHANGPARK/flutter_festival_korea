import 'package:festival_slider/src/component/rpi/rpi_hardware_component.dart';
import 'package:festival_slider/src/component/rpi/rpi_os_component.dart';
import 'package:festival_slider/src/component/rpi/rpi_prepare_component.dart';
import 'package:festival_slider/src/component/slider/slider_white_board.dart';
import 'package:festival_slider/src/service/launcher_api.dart';
import 'package:festival_slider/src/utils/styles.dart';
import 'package:flutter/material.dart';

class AboutRpiScreen extends StatelessWidget {
  const AboutRpiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          SizedBox(
            height: 64,
            child: TabBar(
              labelColor: kPrimaryColor,
              tabs: const [
                Tab(
                  text: "Preparations",
                ),
                Tab(
                  text: "Hardware",
                ),
                Tab(
                  text: "OS",
                ),
              ],
              labelStyle: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Expanded(
              child: TabBarView(physics: NeverScrollableScrollPhysics(), children: [
            RpiPrepareComponent(),
            RpiHardwareComponent(),
            RpiOSComponent(),
          ])),
        ],
      ),
    );
  }
}

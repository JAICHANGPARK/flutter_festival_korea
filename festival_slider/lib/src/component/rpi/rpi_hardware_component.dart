import 'package:festival_slider/src/component/slider/slider_white_board.dart';
import 'package:flutter/material.dart';


class RpiHardwareComponent extends StatelessWidget {
  const RpiHardwareComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     SliderWhiteBoard(
      child: Scrollbar(
        child: ListView(
          children: [
            const SizedBox(
              height: 64,
            ),
            Image.asset(
              "assets/rpi/rpi_logo.png",
              height: 360,
            ),
            Padding(
              padding: const EdgeInsets.all(64.0),
              child: SelectableText(
                "The Raspberry Pi Foundation is a UK-based charity that works to put the power of computing and digital making into the hands of people all over the world.",
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 120,
            ),
            Image.asset(
              "assets/rpi/rpi1_board.jpg",
              width: 480,
              height: 480,
              fit: BoxFit.fitHeight,
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: SelectableText(
                "Raspberry Pi 1 - 2012년\nBroadcom BCM2835 SoC(1GHz ARM1176JZF-S CPU)",
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 64,
            ),
            Image.asset(
              "assets/rpi/rpi2_board.jpg",
              height: 360,
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: SelectableText(
                "Raspberry Pi 2 - 2015년\n",
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 64,
            ),
            Image.asset(
              "assets/rpi/rpi3_board.png",
              height: 360,
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: SelectableText(
                "Raspberry Pi 3 - 2016년\nBCM2837B0 SoC(1.4GHz ARM Cortex-A53)",
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 64,
            ),
            Image.asset("assets/rpi/raspberry-pi-4-board.png"),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: SelectableText(
                "Raspberry Pi 4 - 2019년\nBroadcom BCM2711 SoC(1.5GHz ARM Cortex-A72)",
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 64,
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: SelectableText(
                "Your tiny, dual-display, desktop computer\n"
                    "…and robot brains, smart home hub, media centre, networked AI core, factory controller, and much more",
                style: Theme.of(context).textTheme.headline4,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 120,
            ),
          ],
        ),
      ),
    );
  }
}

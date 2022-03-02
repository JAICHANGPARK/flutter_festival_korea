// ignore_for_file: unnecessary_const

import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_gpiod/flutter_gpiod.dart';
import 'package:async/async.dart';

class IOEvent {
  SignalEvent signalEvent;
  int ioNum;

  IOEvent(this.signalEvent, this.ioNum);
}

class RpiGpioSimpleReaderComponent extends StatefulWidget {
  const RpiGpioSimpleReaderComponent({Key? key}) : super(key: key);

  @override
  State<RpiGpioSimpleReaderComponent> createState() => _RpiGpioSimpleReaderComponentState();
}

class _RpiGpioSimpleReaderComponentState extends State<RpiGpioSimpleReaderComponent> {
  List<GpioChip> chips = [];

  Map<int, GpioLine> lineMap = {};
  Map<int, IOEvent> lineEventMap = {};
  Map<String, StreamSubscription?> ioStreamSubMap = {};

  bool isSupportMachine = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (Platform.isLinux) {
      chips = FlutterGpiod.instance.chips;
      setState(() {
        isSupportMachine = true;
      });
      initGpioSettings();
    }
  }

  Future initGpioSettings() async {
    for (final chip in chips) {
      debugPrint("chip name: ${chip.name}, chip label: ${chip.label}");

      for (final line in chip.lines) {
        debugPrint("  line: $line");
      }
    }
    final chip = chips.singleWhere(
      (chip) => chip.label == 'pinctrl-bcm2711',
      orElse: () => chips.singleWhere((chip) => chip.label == 'pinctrl-bcm2835'),
    );
    lineMap[23] = chip.lines[23];
    lineMap[24] = chip.lines[24];
    final line0 = chip.lines[22];
    final line1 = chip.lines[23];
    final line2 = chip.lines[24];
    final line3 = chip.lines[25];

    line0.requestInput(consumer: "test 0", triggers: {SignalEdge.falling, SignalEdge.rising});
    line1.requestInput(consumer: "test 1", triggers: {SignalEdge.falling, SignalEdge.rising});

    line2.requestInput(consumer: "test 2", triggers: {SignalEdge.falling, SignalEdge.rising});

    line3.requestInput(consumer: "test 3", triggers: {SignalEdge.falling, SignalEdge.rising});

    final mergedEvents = StreamGroup.mergeBroadcast([
      line0.onEvent.map((event) => IOEvent(event, 22)),
      line1.onEvent.map((event) => IOEvent(event, 23)),
      line2.onEvent.map((event) => IOEvent(event, 24)),
      line3.onEvent.map((event) => IOEvent(event, 25)),
      // line2.onEvent.map((event) => "(pin 24) $event"),
    ]);

    await for (final event in mergedEvents) {
      print("GPIO event: $event");
      switch (event.ioNum) {
        case 22:
          if (lineEventMap.containsKey(22)) {
            lineEventMap.update(22, (value) => event);
          } else {
            lineEventMap[22] = event;
          }

          break;
        case 23:
          if (lineEventMap.containsKey(23)) {
            lineEventMap.update(23, (value) => event);
          } else {
            lineEventMap[23] = event;
          }

          break;
        case 24:
          if (lineEventMap.containsKey(24)) {
            lineEventMap.update(24, (value) => event);
          } else {
            lineEventMap[24] = event;
          }

          break;
        case 25:
          if (lineEventMap.containsKey(25)) {
            lineEventMap.update(25, (value) => event);
          } else {
            lineEventMap[25] = event;
          }

          break;
      }

      setState(() {});
    }
  }

  @override
  void dispose() {
    for (var element in lineMap.entries) {
      lineMap[element.key]?.release();
    }
    for (var element in ioStreamSubMap.entries) {
      ioStreamSubMap[element.key]?.cancel();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return isSupportMachine
        ? GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 1.2,
            children: lineEventMap.entries
                .map((e) => Container(
                      decoration: BoxDecoration(
                        color: e.value.signalEvent.edge == SignalEdge.rising ? Colors.green : Colors.red,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${e.key}",
                            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                  fontSize: 64,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),
                    ))
                .toList(),
          )
        : const Center(
            child: const Text("Not Supported"),
          );
  }
}

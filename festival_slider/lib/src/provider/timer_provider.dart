import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final timerProvider = StateNotifierProvider<TimerController, String>(
  (ref) => TimerController(
    "00:00",
  ),
);

class TimerController extends StateNotifier<String> {
  TimerController(String state) : super(state);

  Timer? timer;
  int totalTime = 60 * 25;

  start() {
    timer?.cancel();
    timer = null;
    timer ??= Timer.periodic(const Duration(seconds: 1), (timer) {
      totalTime--;
      int min = totalTime ~/ 60;
      int sec = totalTime % 60;
      state = "$min:$sec";
    });
  }

  stop() {
    timer?.cancel();
  }

  reset() {
    stop();
    totalTime = 60 * 25;
    state = "00:00";
  }
}

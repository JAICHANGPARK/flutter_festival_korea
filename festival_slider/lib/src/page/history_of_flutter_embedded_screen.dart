import 'package:festival_slider/src/component/slider/slider_white_board.dart';
import 'package:flutter/material.dart';

class HistoryOfFlutterEmbeddedScreen extends StatelessWidget {
  const HistoryOfFlutterEmbeddedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliderWhiteBoard(
        child: Padding(
          padding: const EdgeInsets.all(64.0),
          child: ListView(
      children: const [
          Text("1. Flutter를 임베디드 시스템에 사용할 수 있을까?"),
          Text("")

      ],
    ),
        ));
  }
}

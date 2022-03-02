import 'package:festival_slider/src/component/slider/slider_white_board.dart';
import 'package:flutter/material.dart';

class ThanksScreen extends StatelessWidget {
  const ThanksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliderWhiteBoard(
      child: Center(
        child: Image.asset("assets/img/jerry.gif"),
      ),
    );
  }
}

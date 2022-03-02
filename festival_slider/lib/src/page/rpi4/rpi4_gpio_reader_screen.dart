import 'package:flutter/material.dart';
import 'package:flutter_gpiod/flutter_gpiod.dart';

class Rpi4GpioReaderScreen extends StatefulWidget {
  const Rpi4GpioReaderScreen({Key? key}) : super(key: key);

  @override
  _Rpi4GpioReaderScreenState createState() => _Rpi4GpioReaderScreenState();
}

class _Rpi4GpioReaderScreenState extends State<Rpi4GpioReaderScreen> {
  final chips = FlutterGpiod.instance.chips;

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

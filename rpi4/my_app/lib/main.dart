import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_gpiod/flutter_gpiod.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  Timer? _timer;

  final chips = FlutterGpiod.instance.chips;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  StreamSubscription? _subscription;
  GpioLine? _line;
  Map<int, bool> _gpioPinState = {23: true};

  Future initChipSettings() async {
    for (final chip in chips) {
      print("chip name: ${chip.name}, chip label: ${chip.label}");
      print("=============line list================");
      for (final line in chip.lines) {
        print("  line: $line");
      }
      print("-------------line end----------------");
    }

    final chip = FlutterGpiod.instance.chips.singleWhere(
      (chip) => chip.label == 'pinctrl-bcm2711',
      orElse: () => FlutterGpiod.instance.chips
          .singleWhere((chip) => chip.label == 'pinctrl-bcm2835'),
    );

    // var line = chip.lines[23];

    final line1 = chip.lines[23];
    _line = line1;
    final line2 = chip.lines[24];
    try {
      line1.release();
    } catch (error) {
      print("[Error] ${error.toString()}");
    }
    try {
      line2.release();
    } catch (error) {
      print("[Error] ${error.toString()}");
    }

    _line?.requestInput(consumer: "test 1");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initChipSettings();
    Timer.periodic(const Duration(milliseconds: 250), (timer) {
      _gpioPinState[23] = (_line?.getValue() ?? true) ? true : false;
      print("Pin 23: ${_line?.getValue()}");
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
    _subscription?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ..._gpioPinState.entries
                .map((e) => ListTile(
                      title: Text("Pin: ${e.key}"),
                      trailing: Container(
                        height: 24,
                        width: 64,
                        color: e.value ? Colors.green : Colors.red,
                      ),
                    ))
                .toList()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

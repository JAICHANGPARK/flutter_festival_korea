import 'package:festival_slider/src/component/slider/slider_white_board.dart';
import 'package:flutter/material.dart';

List<String> indexTitles = [
  "What's Raspberry Pi",
  "History of Flutter Embedded",
  "Flutter Installation",
  "Raspberry Pi IO",
  "Build RPi GPIO App",
];

class SliderIndexScreen extends StatelessWidget {
  const SliderIndexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliderWhiteBoard(
        child: Padding(
      padding: const EdgeInsets.all(64.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Index',
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: 24,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: indexTitles.length,
                itemBuilder: (context, index){
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${index+1}. ${indexTitles[index]}",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              );
            }),
          ),

        ],
      ),
    ));
  }
}

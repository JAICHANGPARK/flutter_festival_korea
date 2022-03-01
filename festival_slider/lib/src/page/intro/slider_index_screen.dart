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
  SliderIndexScreen({Key? key, required this.index}) : super(key: key);
  int index;

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
                itemBuilder: (context, idx) {
                  return Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      
                      border: index != 0 ? Border.all(
                        color:  index == idx ? Colors.blueAccent : Colors.transparent,
                        width: 4
                      ) : null,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${idx + 1}. ${indexTitles[idx]}",
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    ));
  }
}

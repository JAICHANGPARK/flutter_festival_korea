import 'package:flutter/material.dart';


class CodeContainer extends StatelessWidget {
   CodeContainer({Key? key, required this.code,
    required this.fileName}) : super(key: key);

  String code;
  String fileName;
  @override
  Widget build(BuildContext context) {
    return Container(
    width: 320,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
        border: Border.all()
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(child: Text(fileName),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(8),
          ),),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: SizedBox(
              child: Scrollbar(
                child: SingleChildScrollView(
                  child: Text(code),
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}

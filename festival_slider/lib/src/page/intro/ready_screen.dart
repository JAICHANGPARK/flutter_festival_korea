import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ReadyScreen extends StatelessWidget {
  const ReadyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          GoRouter.of(context).go('/title');
        },
        child: Center(
            child: Image.asset(
          'assets/dash2022.png',
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/button_learn.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Text('sa'),
        color: Colorsitems().color2,
        height: 100,
        width: 100,
      ),
    );
  }
}

class Colorsitems {
  final Color color1 = Color.fromARGB(255, 158, 17, 36);
  final Color color2 = Color.fromRGBO(234, 341, 234, 1);
}

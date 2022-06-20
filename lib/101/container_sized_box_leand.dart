import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ContainerSizedBoxLearn extends StatelessWidget {
  final String hello = 'hello';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox.square(dimension: 50, child: Text('b' * 50)),
            Container(
              width: 220,
              height: 330,
              padding: EdgeInsets.all(20),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.amber,
                boxShadow: [
                  BoxShadow(
                    offset: Offset.zero,
                    color: Colors.green,
                    blurRadius: 20,
                  ),
                ],
                gradient: LinearGradient(
                    colors: [Color.fromARGB(255, 14, 81, 136), Colors.black]),
              ),
              child: Center(
                child: Text(
                  hello,
                  style: TextStyles.TextStyless,
                ),
              ),
            ),
          ],
        ));
  }
}

class TextStyles {
  static TextStyle TextStyless = TextStyle(
      color: Color.fromARGB(255, 161, 170, 161),
      fontSize: 50,
      fontStyle: FontStyle.italic);
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppbarLearn extends StatelessWidget {
  const AppbarLearn({Key? key}) : super(key: key);
  final String title = 'Welcome';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('$title'),
          leading: Icon(Icons.chevron_left),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.message))],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('body'),
            ),
          ],
        ));
  }
}

import 'package:flutter/material.dart';

class RowLearn extends StatelessWidget {
  const RowLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(child: Container(color: Colors.red)),
                  Expanded(child: Container(color: Colors.white)),
                  Expanded(child: Container(color: Colors.blue)),
                  Expanded(child: Container(color: Colors.yellow))
                ],
              )),
          Expanded(
              flex: 2,
              child: Center(
                child: Text('data'),
              )),
          Expanded(flex: 2, child: FlutterLogo()),
          Expanded(flex: 2, child: FlutterLogo()),
        ],
      ),
    );
  }
}

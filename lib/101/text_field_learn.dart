import 'package:flutter/material.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TextField(
        buildCounter: (BuildContext context,
            {int? currentLength, bool? isFocused, maxLength}) {
          return AnimatedContainer(
            key: UniqueKey(),
            duration: Duration(milliseconds: 100),
            color: Colors.green[100 * ((currentLength ?? 0) ~/ 2)],
            height: 10,
            width: 40,
          );
        },
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.mail),
            border: OutlineInputBorder(),
            labelText: 'Mail'),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class sharedlearn extends StatefulWidget {
  const sharedlearn({Key? key}) : super(key: key);

  @override
  State<sharedlearn> createState() => _sharedlearnState();
}

class _sharedlearnState extends State<sharedlearn> {
  int _currentvalue = 0;
  void _onchangeValue(String value) {
    final _value = int.tryParse(value);
    if (_value != null) {
      setState(() {
        _currentvalue = _value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TextField(),
    );
  }
}

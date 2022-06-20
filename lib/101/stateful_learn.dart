import 'package:flutter/material.dart';
import 'package:flutter_application_1/products/counter_hello_button.dart';
import 'package:flutter_application_1/products/language/language_items.dart';

class StatefulLearn extends StatefulWidget {
  const StatefulLearn({Key? key}) : super(key: key);

  @override
  State<StatefulLearn> createState() => _StatefulLearnState();
}

class _StatefulLearnState extends State<StatefulLearn> {
  int _CounteValue = 0;

  void _UpdateCounter(bool isIncrement) {
    if (isIncrement) {
      _CounteValue = _CounteValue + 1;
    } else {
      if (_CounteValue == 0) {
        return null;
      }
      _CounteValue = _CounteValue - 1;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LanguageItems.WelcomeTitle),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _button2(),
          _button1(),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              _CounteValue.toString(),
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          CounterHelloButton()
        ],
      ),
    );
  }

  FloatingActionButton _button2() {
    return FloatingActionButton(
      onPressed: () {
        _UpdateCounter(true);
      },
      child: Icon(Icons.add),
      backgroundColor: Colors.green,
    );
  }

  Padding _button1() {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: FloatingActionButton(
        onPressed: () {
          _UpdateCounter(false);
        },
        child: Icon(Icons.remove),
        backgroundColor: Colors.red,
      ),
    );
  }
}

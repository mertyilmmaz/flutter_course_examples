import 'package:flutter/material.dart';
import 'package:flutter_application_1/products/language/language_items.dart';

class CounterHelloButton extends StatefulWidget {
  const CounterHelloButton({Key? key}) : super(key: key);

  @override
  State<CounterHelloButton> createState() => _CounterHelloButtonState();
}

class _CounterHelloButtonState extends State<CounterHelloButton> {
  int _CustomCount = 0;
  final String _Welcometitle = LanguageItems.WelcomeTitle;

  void _UpdateCustomCount() {
    setState(() {
      ++_CustomCount;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          _UpdateCustomCount();
        },
        child: Text('$_Welcometitle, $_CustomCount'));
  }
}

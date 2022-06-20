import 'package:flutter/material.dart';

class ColorDemosLearn extends StatefulWidget {
  const ColorDemosLearn({Key? key, required this.initialColor})
      : super(key: key);
  final Color? initialColor;
  @override
  State<ColorDemosLearn> createState() => _ColorDemosLearnState();
}

class _ColorDemosLearnState extends State<ColorDemosLearn> {
  Color? _backgroundColor = Colors.black;
  @override
  void initState() {
    super.initState();
    _backgroundColor = widget.initialColor ?? Colors.transparent;
  }

  @override
  void didUpdateWidget(covariant ColorDemosLearn oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    if (widget.initialColor != _backgroundColor &&
        widget.initialColor != null) {
      changeBackgroundColor(widget.initialColor!);
    }
  }

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(onTap: _ColorOnTap, items: [
        BottomNavigationBarItem(
            icon: _ColorContainer(color: Colors.red), label: 'Red'),
        BottomNavigationBarItem(
            icon: _ColorContainer(color: Colors.green), label: 'Green'),
        BottomNavigationBarItem(
            icon: _ColorContainer(color: Colors.blue), label: 'Blue')
      ]),
    );
  }

  void _ColorOnTap(int value) {
    if (value == _MyColors.red.index) {
      changeBackgroundColor(Colors.red);
    } else if (value == _MyColors.green.index) {
      changeBackgroundColor(Colors.green);
    } else {
      changeBackgroundColor(Colors.blue);
    }
  }
}

enum _MyColors { red, green, blue }

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}

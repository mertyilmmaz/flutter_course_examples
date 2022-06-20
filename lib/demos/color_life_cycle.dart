import 'package:flutter/material.dart';

import 'color_demos_view.dart';

class ColorLifeCycleView extends StatefulWidget {
  const ColorLifeCycleView({Key? key}) : super(key: key);

  @override
  State<ColorLifeCycleView> createState() => _ColorLifeCycleViewState();
}

class _ColorLifeCycleViewState extends State<ColorLifeCycleView> {
  Color? _backgroundcolor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: _ChangeBackgground, icon: Icon(Icons.clear))
        ],
      ),
      body: Column(
        children: [
          const Spacer(),
          Expanded(
              child: ColorDemosLearn(
            initialColor: _backgroundcolor,
          ))
        ],
      ),
    );
  }

  void _ChangeBackgground() {
    setState(() {
      _backgroundcolor = Colors.pink;
    });
  }
}

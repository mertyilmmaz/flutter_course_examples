import 'package:flutter/material.dart';

part 'part_app_bar.dart';

class PartofLearn extends StatefulWidget {
  const PartofLearn({Key? key}) : super(key: key);

  @override
  State<PartofLearn> createState() => _PartofLearnState();
}

class _PartofLearnState extends State<PartofLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _PartofAppBar(),
      body: Text('data'),
    );
  }
}

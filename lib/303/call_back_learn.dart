import 'package:flutter/material.dart';

class CallBackLearn extends StatefulWidget {
  const CallBackLearn({Key? key}) : super(key: key);

  @override
  State<CallBackLearn> createState() => _CallBackLearnState();
}

class _CallBackLearnState extends State<CallBackLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [],
      ),
    );
  }
}

class CallbackUser {
  final String name;

  final int id;

  CallbackUser(this.name, this.id);
}

List<CallbackUser> dummyUsers() {
  return [CallbackUser('vb', 123), CallbackUser('vb2', 123)];
}

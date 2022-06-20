import 'package:flutter/material.dart';

class StatelesLearn extends StatelessWidget {
  final String text1 = 'veli';
  final String text2 = 'ali';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(232, 1123, 332, 1),
        title: Text('data'),
        titleTextStyle: TextStyle(fontStyle: FontStyle.italic),
      ),
      body: Column(
        children: [
          TitleText(
            title: text1,
          ),
          TitleText(
            title: text2,
          ),
          _custom_container(),
          empty_box()
        ],
      ),
    );
  }

  SizedBox empty_box() {
    return SizedBox(
      height: 20,
    );
  }
}

class _custom_container extends StatelessWidget {
  const _custom_container({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('data'),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline3,
    );
  }
}

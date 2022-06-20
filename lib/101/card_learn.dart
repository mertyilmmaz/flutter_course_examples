import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            margin: ProjectMargins().CardMargin,
            elevation: 100,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: SizedBox(
              height: 100,
              width: 200,
              child: Center(child: Text('data')),
            ),
          ),
          Card(
            elevation: 100,
            child: SizedBox(
                height: 100, width: 200, child: Center(child: Text('data'))),
          ),
          CustomCards(
            child: SizedBox(
                height: 100, width: 200, child: Center(child: Text('data'))),
          )
        ],
      ),
    );
  }
}

class ProjectMargins {
  final CardMargin = EdgeInsets.all(10);
}

class CustomCards extends StatelessWidget {
  const CustomCards({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: ProjectMargins().CardMargin,
      elevation: 100,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: child,
    );
  }
}

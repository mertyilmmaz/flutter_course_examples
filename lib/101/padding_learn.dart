import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding().pagePaddingVertical,
        child: Column(
          children: [
            Padding(
              padding: ProjectPadding().pagePaddingVerticalWithHorizontal,
              child: Container(
                color: Colors.white,
                height: 100,
              ),
            ),
            Padding(
              padding: ProjectPadding().pagePaddingOnlyRight,
              child: Container(
                color: Colors.black,
                height: 100,
                width: 200,
                child: Center(
                  child: Text(
                    'data',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ),
              ),
            ),
            Padding(
                padding: ProjectPadding().pagePaddingOnlyRight +
                    ProjectPadding().pagePaddingVertical,
                child: Text('aliii'))
          ],
        ),
      ),
    );
  }
}

class ProjectPadding {
  final pagePaddingVertical = const EdgeInsets.symmetric(vertical: 10);
  final pagePaddingOnlyRight =
      const EdgeInsets.symmetric(vertical: 10, horizontal: 20);
  final pagePaddingVerticalWithHorizontal =
      const EdgeInsets.symmetric(vertical: 10, horizontal: 20);
}

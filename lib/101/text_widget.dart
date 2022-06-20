import 'package:flutter/material.dart';

class TextLearn extends StatelessWidget {
  const TextLearn({Key? key}) : super(key: key);
  final String name = 'name';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        '$name',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.headline4,
      ),
      Text('s',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: ProjectStyles.welcomeStyle),
    ])));
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = TextStyle(
      wordSpacing: 2,
      color: ProjextColors.welcomeColor,
      fontStyle: FontStyle.italic,
      fontSize: 32,
      decoration: TextDecoration.underline,
      letterSpacing: 2,
      fontWeight: FontWeight.w600);
}

class ProjextColors {
  static Color welcomeColor = Color.fromARGB(255, 28, 121, 48);
}

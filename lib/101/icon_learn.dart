import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class IconLearn extends StatelessWidget {
  IconLearn({Key? key}) : super(key: key);
  final String Title = 'Icon Learn';
  final IconColors iconColors = IconColors();
  final IconSizes iconSizes = IconSizes();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$Title'),
        backgroundColor: Colors.red,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.headset,
            color: iconColors.xx,
            size: iconSizes.SmallIcon,
          )
        ],
      ),
    );
  }
}

class IconSizes {
  final double SmallIcon = 50;
}

class IconColors {
  final Color xx = Color.fromARGB(255, 51, 68, 201);
}

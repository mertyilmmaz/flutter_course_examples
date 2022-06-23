import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingBar extends StatelessWidget {
  final double? size;
  final double _defaultsize = 55;
  const LoadingBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpinKitCircle(color: Colors.red, size: size ?? _defaultsize);
  }
}

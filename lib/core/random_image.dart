import 'package:flutter/material.dart';

class RandomImage extends StatelessWidget {
  const RandomImage({Key? key, this.heigt = 100}) : super(key: key);
  final ImageUrl = 'https://picsum.photos/200';
  final double heigt;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      ImageUrl,
      fit: BoxFit.cover,
    );
  }
}

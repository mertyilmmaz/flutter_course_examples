import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(child: PngImages(name: ImageItems().AppleBooks)),
        ],
      ),
    );
  }
}

class ImageItems {
  final String AppleBooks = 'PNG_transparency_demonstration_1';
}

class PngImages extends StatelessWidget {
  const PngImages({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(_PngImages_path, fit: BoxFit.cover);
  }

  String get _PngImages_path => 'assets/png/$name.png';
}

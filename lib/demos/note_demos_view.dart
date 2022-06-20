import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/101/image_learn.dart';

class NoteDemosView extends StatelessWidget {
  const NoteDemosView({Key? key}) : super(key: key);
  final _title = 'Create you first app';
  final _description = 'add a note';
  final _createNote = 'Create a Note';
  final _ImportNote = 'Import note';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PagePaddingItems.verticalPadding,
        child: Column(
          children: [
            PngImages(name: ImageItems().AppleBooks),
            TitleWidget(Title: _title),
            Padding(
              padding: PagePaddingItems.horizontalPadding,
              child: SubTitleWidget(
                Title: _description * 8,
              ),
            ),
            Spacer(),
            SizedBox(
                height: ButtonHeights.ButtonNormalHeights,
                child: CreateButton(context)),
            TextButton(onPressed: () {}, child: Text(_ImportNote)),
            SizedBox(
              height: ButtonHeights.ButtonNormalHeights,
            )
          ],
        ),
      ),
    );
  }

  ElevatedButton CreateButton(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: Center(
            child: Text(
          _createNote,
          style: Theme.of(context).textTheme.headline5,
        )));
  }
}

//centered text widget
class SubTitleWidget extends StatelessWidget {
  const SubTitleWidget({
    Key? key,
    this.textAlign = TextAlign.center,
    required this.Title,
  }) : super(key: key);
  final TextAlign textAlign;
  final String Title;
  @override
  Widget build(BuildContext context) {
    return Text(
      Title,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.subtitle1?.copyWith(
            color: Colors.black,
          ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
    required this.Title,
  }) : super(key: key);

  final String Title;

  @override
  Widget build(BuildContext context) {
    return Text(
      Title,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
    );
  }
}

class PagePaddingItems {
  static EdgeInsets horizontalPadding = EdgeInsets.symmetric(horizontal: 20);
  static EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 10);
}

class ButtonHeights {
  static const double ButtonNormalHeights = 50;
}

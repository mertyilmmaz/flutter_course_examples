import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/card_learn.dart';
import 'package:flutter_application_1/101/icon_learn.dart';
import 'package:flutter_application_1/101/image_learn.dart';
import 'package:flutter_application_1/101/list_tile_learn.dart';
import 'package:flutter_application_1/products/language/language_items.dart';

class PageViewLearn extends StatefulWidget {
  const PageViewLearn({Key? key}) : super(key: key);

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  int _currentpageindex = 0;

  void _updatepageindex(int index) {
    setState(() {
      _currentpageindex = index;
    });
  }

  final _pagecontrolller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              '$_currentpageindex',
              style: Theme.of(context).textTheme.headline3,
            ),
          ),
          Spacer(),
          FloatingActionButton(
            onPressed: () {
              _pagecontrolller.previousPage(
                  duration: DurationUtility()._DurationLow,
                  curve: Curves.slowMiddle);
            },
            child: Icon(Icons.chevron_left),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: FloatingActionButton(
              onPressed: () {
                _pagecontrolller.nextPage(
                    duration: DurationUtility()._DurationLow,
                    curve: Curves.slowMiddle);
              },
              child: Icon(Icons.chevron_right),
            ),
          )
        ],
      ),
      appBar: AppBar(
        title: Text(LanguageItems.WelcomeTitle),
      ),
      body: PageView(
        padEnds: false,
        controller: _pagecontrolller,
        onPageChanged: _updatepageindex,
        children: [ImageLearn(), IconLearn(), ListTileLearn(), CardLearn()],
      ),
    );
  }
}

class DurationUtility {
  final _DurationLow = Duration(milliseconds: 500);
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/icon_learn.dart';
import 'package:flutter_application_1/101/image_learn.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({Key? key}) : super(key: key);

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;
  final double _nothedvalue = 10;
  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: _MyTabView.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _MyTabView.values.length,
      child: Scaffold(
        extendBody: true,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _tabController.animateTo(_MyTabView.home.index);
          },
          child: Icon(Icons.home),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            notchMargin: _nothedvalue,
            shape: CircularNotchedRectangle(),
            child: _tabview()),
        appBar: AppBar(),
        body: _mytabview(),
      ),
    );
  }

  TabBar _tabview() {
    return TabBar(
        onTap: (int index) {},
        controller: _tabController,
        tabs: _MyTabView.values.map((e) => Tab(text: '${e.name}')).toList());
  }

  TabBarView _mytabview() {
    return TabBarView(
        children: [ImageLearn(), IconLearn(), IconLearn(), IconLearn()]);
  }
}

enum _MyTabView { home, settings, favorite, profile }

extension _MyTabViewExtension on _MyTabView {}

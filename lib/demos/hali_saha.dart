import 'dart:ui';

import 'package:flutter/material.dart';

class HaliSahaApp extends StatelessWidget {
  const HaliSahaApp({Key? key}) : super(key: key);
  final String AppBarrTitle = 'Hali Saha';
  final double BottomNavigationBarMargin = 8;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold ozelliklerinin bir cogu main.dart'dan verilebilir.
      floatingActionButton: _CustomFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: BottomNavigationBarMargin,
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
                child:
                    _BottomNavigationBarIconButtons(icons: Icon(Icons.menu))),
            Expanded(
                child: _BottomNavigationBarIconButtons(
                    icons: Icon(Icons.sports_soccer))),
            SizedBox(width: 100),
            Expanded(
                child: _BottomNavigationBarIconButtons(
                    icons: Icon(Icons.scoreboard))),
            Expanded(
                child: _BottomNavigationBarIconButtons(
                    icons: Icon(Icons.stadium))),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          AppBarrTitle,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.location_on_outlined)),
        ],
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
      ),
      body: ListView(
        children: [
          _CustomContainerForHomeView(
            CourtName: 'Final Hali Saha ',
            CourtLocation: 'Melikgazi',
          ),
          _CustomContainerForHomeView(
            CourtName: 'Yilmaz Hali Saha ',
            CourtLocation: 'Kocasinan',
          ),
          _CustomContainerForHomeView(
            CourtName: 'Hashalici Hali Saha ',
            CourtLocation: 'Kocasinan',
          ),
          _CustomContainerForHomeView(
            CourtName: 'Koy Isleri Hali Saha ',
            CourtLocation: 'Kocasinan',
          ),
          _CustomContainerForHomeView(
            CourtName: 'Gokkusagi Hali Saha ',
            CourtLocation: 'Talas',
          ),
          _CustomContainerForHomeView(
            CourtName: 'Final Hali Saha ',
            CourtLocation: 'Melikgazi',
          ),
          _CustomContainerForHomeView(
            CourtName: 'Final Hali Saha ',
            CourtLocation: 'Melikgazi',
          ),
          _CustomContainerForHomeView(
            CourtName: 'Final Hali Saha ',
            CourtLocation: 'Melikgazi',
          ),
        ],
      ),
    );
  }
}

class _CustomContainerForHomeView extends StatelessWidget {
  const _CustomContainerForHomeView({
    Key? key,
    required this.CourtName,
    required this.CourtLocation,
  }) : super(key: key);
  final String CourtName;
  final String CourtLocation;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: Offset(2.5, 3),
                blurRadius: 7,
                blurStyle: BlurStyle.normal,
                color: Color.fromARGB(68, 255, 255, 255))
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              bottomLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          color: Colors.blue[700],
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 43, 8, 168),
            Color.fromARGB(176, 44, 129, 199)
          ])),
      margin: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
      child: Row(
        children: [
          Container(
            height: 20,
            width: 80,
            child: Icon(Icons.stadium),
          ),
          _CourtInformationContainer(
            CourtName: CourtName,
            CourtLocation: CourtLocation,
          ),
          Container(
              margin: EdgeInsets.only(left: 50, top: 30),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(2.5, 3),
                        color: Colors.black,
                        blurRadius: 2,
                        blurStyle: BlurStyle.inner)
                  ]),
              height: 40,
              width: 40,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.play_arrow,
                    color: Color.fromARGB(255, 24, 70, 196),
                  ))),
        ],
      ),
    );
  }
}

class _customCards extends StatelessWidget {
  const _customCards({
    Key? key,
    required this.CourtName,
    required this.CourtLocation,
  }) : super(key: key);
  final String CourtName;
  final String CourtLocation;
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      color: _Colors().customCardsColor,
      margin: _Margins().CustomCardsMargins,
      shadowColor: _Colors().customCardsShadowColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 100,
              child: Icon(Icons.stadium),
            ),
          ),
          Expanded(
            flex: 2,
            child: _CourtInformationContainer(
              CourtName: CourtName,
              CourtLocation: CourtLocation,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
                height: 100,
                child: IconButton(
                    onPressed: () {
                      Container(
                        height: 100,
                        width: 100,
                      );
                    },
                    icon: Icon(Icons.chevron_right))),
          ),
        ],
      ),
    );
  }
}

class _CourtInformationContainer extends StatelessWidget {
  const _CourtInformationContainer({
    Key? key,
    required this.CourtName,
    required this.CourtLocation,
  }) : super(key: key);
  final String CourtName;
  final String CourtLocation;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: 150,
        margin: EdgeInsets.only(top: 10),
        child: ListTile(
          title: Text(CourtName),
          subtitle: Row(
            children: [
              Icon(Icons.location_on_outlined),
              Text(
                CourtLocation,
                style: TextStyle(fontStyle: FontStyle.italic),
              )
            ],
          ),
        ));
  }
}

class _CustomFloatingActionButton extends StatelessWidget {
  const _CustomFloatingActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(
        Icons.add_box_outlined,
        color: Colors.white,
      ),
      backgroundColor: _Colors().CustomFloatingActionButtonColor,
    );
  }
}

class _BottomNavigationBarIconButtons extends StatelessWidget {
  const _BottomNavigationBarIconButtons({
    Key? key,
    required this.icons,
  }) : super(key: key);
  final Icon icons;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: icons,
      color: _Colors().BottomNavigationBarIconButtonsColor,
    );
  }
}

class _Colors {
  final Color BottomNavigationBarIconButtonsColor = Colors.black;
  final Color CustomFloatingActionButtonColor = Colors.black;
  final Color customCardsColor = Color.fromARGB(255, 74, 160, 194);
  final Color customCardsShadowColor = Colors.green;
}

class _Margins {
  final EdgeInsets CustomCardsMargins =
      EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10);
}

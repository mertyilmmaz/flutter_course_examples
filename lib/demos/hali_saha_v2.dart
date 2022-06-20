import 'package:flutter/material.dart';

class HaliSahaV2 extends StatelessWidget {
  const HaliSahaV2({Key? key}) : super(key: key);
  final double BottomNavigationBarMargin = 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 95, 184, 98),
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
        title: Text('Hali Saha APP.v2'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.location_on_outlined)),
        ],
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Stack(
                    children: [
                      Container(
                          margin: EdgeInsets.only(
                              left: 5, right: 10, top: 5, bottom: 5),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 59, 133, 194),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)))),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 7),
                        child: Image.asset(
                          'assets/png/footballer_png.png',
                          scale: 7,
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 200, left: 45),
                          child: Text(
                            'Oyuncu Bul',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textScaleFactor: 1.3,
                          )),
                      Container(
                        margin: EdgeInsets.only(
                          top: 230,
                          left: 70,
                        ),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(2.5, 3),
                                  color: Colors.white,
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
                            )),
                      )
                    ],
                  )),
                  Expanded(
                    child: Stack(children: [
                      Container(
                        margin: EdgeInsets.only(
                            left: 5, right: 10, top: 5, bottom: 5),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 219, 85, 75),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10, top: 65),
                        child: Image.asset('assets/png/team_png.png'),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 200, left: 50),
                        child: Text(
                          'Takim Bul',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          textScaleFactor: 1.3,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 230,
                          left: 70,
                        ),
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
                            )),
                      )
                    ]),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Stack(
              children: [
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Card(
                      color: Colors.blue,
                      child: Container(
                        height: 50,
                        width: 400,
                        color: Colors.black,
                      ),
                    ),
                    Card(
                      color: Colors.blue,
                      child: Container(
                        height: 50,
                        width: 200,
                        color: Colors.red,
                      ),
                    ),
                    Card(
                      color: Colors.blue,
                      child: Container(
                        height: 50,
                        width: 200,
                        color: Colors.blue,
                      ),
                    )
                  ],
                )
              ],
            ))
          ],
        ),
      ),
    );
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
  final Color CustomFloatingActionButtonColor = Colors.green;
  final Color customCardsColor = Color.fromARGB(255, 74, 160, 194);
  final Color customCardsShadowColor = Colors.green;
}

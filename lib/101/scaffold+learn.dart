import 'package:flutter/material.dart';

class ScaffoldLeanr extends StatelessWidget {
  const ScaffoldLeanr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text('sa'),
      backgroundColor: Colors.red,
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) => Container(
                      child: Center(child: Text('ss')),
                    ));
          },
          child: Text('sa')),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: Drawer(
        child: Center(
          child: Text(
            'ss',
          ),
        ),
      ),
      bottomSheet: Text('sa'),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.access_alarm), label: 'sa'),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: 'ss')
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.only(left: 10, right: 10),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: ListTile(
                title: RandomImage(),
                subtitle: Text('How do you use your Card'),
                leading: Icon(Icons.money),
                trailing: SizedBox(
                  width: 20,
                  child: Icon(Icons.chevron_right),
                ),
                onTap: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}

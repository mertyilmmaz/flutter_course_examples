import 'package:flutter/material.dart';

class navigatedetailLearnDart extends StatefulWidget {
  const navigatedetailLearnDart({Key? key}) : super(key: key);

  @override
  State<navigatedetailLearnDart> createState() => _navigateLearnDartState();
}

class _navigateLearnDartState extends State<navigatedetailLearnDart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton.icon(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            icon: Icon(Icons.check),
            label: Text('onayla')),
      ),
    );
  }
}

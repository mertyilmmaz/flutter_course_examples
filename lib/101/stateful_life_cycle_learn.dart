import 'package:flutter/material.dart';

// Stafull Widget ile baska class ve sayfadan veri almak ve dad child
// iliskisinde olan widgetlar arasi dad den ve child dan bilgiler almak
// ornek olarak dad de olan bir parametre degisikligi (burda _backgroundcolor)
// childe atmakta problem yasamiyoruz ancak child da olan degisimi dad e atamak
// icin dad icerisindeki if li komut satirinda farkl  bir yontem izliyoruz
class StatefulLifeCycleLearn extends StatefulWidget {
  const StatefulLifeCycleLearn({Key? key, required this.message})
      : super(key: key);
  final String message;

  @override
  State<StatefulLifeCycleLearn> createState() => _StatefulLifeCycleLearnState();
}

class _StatefulLifeCycleLearnState extends State<StatefulLifeCycleLearn> {
  String _message = ' ';
  late final bool _isOdd;

  @override
  void initState() {
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;

    _computename();
  }

  void _computename() {
    if (_isOdd) {
      _message += 'Cift';
    } else {
      _message += 'Tek';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: widget.message.length.isOdd
            ? Text('kelime tek')
            : Text('kelime cift'),
      ),
      body: _isOdd
          ? TextButton(onPressed: () {}, child: Text(widget.message))
          : ElevatedButton(onPressed: () {}, child: Text(widget.message)),
    );
  }
}

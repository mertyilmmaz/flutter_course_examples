import 'package:flutter/material.dart';

class MyCollectionsDemos extends StatefulWidget {
  const MyCollectionsDemos({Key? key}) : super(key: key);

  @override
  State<MyCollectionsDemos> createState() => _MyCollectionsDemosState();
}

class _MyCollectionsDemosState extends State<MyCollectionsDemos> {
  late final List<CollectionModel> _items;
  @override
  void initState() {
    super.initState();

    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: _PaddingUtility().paddingsymetrichorizontal,
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return _Category_card(model: _items[index]);
        },
      ),
    );
  }
}

class _Category_card extends StatelessWidget {
  const _Category_card({
    Key? key,
    required CollectionModel model,
  })  : _model = model,
        super(key: key);

  final CollectionModel _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: _PaddingUtility().paddingonlybottom,
      child: SizedBox(
        height: 300,
        child: Padding(
          padding: _PaddingUtility().paddingall,
          child: Column(
            children: [
              Expanded(
                child: Image.asset(_model.ImagePath, fit: BoxFit.fill),
              ),
              Padding(
                padding: _PaddingUtility().paddingTop,
                child: Row(
                  children: [
                    Text(_model.title),
                    Spacer(),
                    Text(_model.price.toString())
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CollectionModel {
  final String ImagePath;
  final String title;
  final double price;

  CollectionModel(
      {required this.ImagePath, required this.title, required this.price});
}

class CollectionItems {
  late final List<CollectionModel> items;

  CollectionItems() {
    items = [
      CollectionModel(
          ImagePath: 'assets/png/PNG_transparency_demonstration_1.png',
          title: 'Abstract Art',
          price: 3.4),
      CollectionModel(
          ImagePath: 'assets/png/PNG_transparency_demonstration_1.png',
          title: 'Abstract Art2',
          price: 3.4),
      CollectionModel(
          ImagePath: 'assets/png/PNG_transparency_demonstration_1.png',
          title: 'Abstract Art3',
          price: 3.4),
      CollectionModel(
          ImagePath: 'assets/png/PNG_transparency_demonstration_1.png',
          title: 'Abstract Art4',
          price: 3.4),
    ];
  }
}

class _PaddingUtility {
  final paddingTop = EdgeInsets.only(top: 10);
  final paddingall = EdgeInsets.all(20);
  final paddingonlybottom = EdgeInsets.only(bottom: 20);
  final paddingsymetrichorizontal = EdgeInsets.symmetric(horizontal: 20);
}

import 'package:black_book/model/model.dart';
import 'package:flutter/material.dart';

class Item extends StatefulWidget {
  final Model model;
  Item({Key key, this.model}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ItemState(model: model);
  }
}

class _ItemState extends State<Item> {
  final Model model;
  _ItemState({this.model});

  @override
  Widget build(BuildContext context) {
    Item item = model.getItem("item_duck");

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('First app')),
          body: Center(
            child: Text(
              item.a.toString(),
            ),
          )),
    );
  }
}

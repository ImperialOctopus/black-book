import 'package:black_book/model/item.dart';
import 'package:black_book/model/model.dart';
import 'package:flutter/material.dart';

class ItemDuck extends StatefulWidget {
  final Model model;
  ItemDuck({Key key, this.model}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ItemDuckState(model: model);
  }
}

class _ItemDuckState extends State<ItemDuck> {
  final Model model;
  _ItemDuckState({this.model});

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

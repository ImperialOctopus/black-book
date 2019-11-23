import 'package:flutter/material.dart';

import '../model/item.dart';
import '../model/model.dart';

class ItemWidget extends StatefulWidget {
  final Model model;
  final Item item;
  ItemWidget({Key key, this.model, this.item}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ItemWidgetState(model: model, item: item);
  }
}

class _ItemWidgetState extends State<ItemWidget> {
  final Model model;
  final Item item;
  _ItemWidgetState({this.model, this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Center(
        child: Text(item.reference),
      ),
    );
  }
}

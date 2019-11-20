import 'package:black_book/model/item.dart';
import 'package:black_book/model/model.dart';
import 'package:black_book/routes/enter_exit_route.dart';
import 'package:flutter/material.dart';

import '../item.dart';

class CategoryDog extends StatefulWidget {
  final Model model;
  const CategoryDog({Key key, this.model}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CategoryDogState(model: model);
  }
}

class _CategoryDogState extends State<CategoryDog> {
  final Model model;
  _CategoryDogState({this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dog'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Rectal Examination'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Item()),
              );
            },
          ),
        ],
      ),
    );
  }
}

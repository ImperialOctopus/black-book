import 'package:black_book/model/category.dart';
import 'package:black_book/model/model.dart';
import 'package:black_book/routes/slide_left_route.dart';
import 'package:flutter/material.dart';

import 'item_widget.dart';

class CategoryWidget extends StatefulWidget {
  final Model model;
  final Category category;
  const CategoryWidget({Key key, this.model, this.category}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CategoryWidgetState(model: model, category: category);
  }
}

class _CategoryWidgetState extends State<CategoryWidget> {
  final Model model;
  final Category category;
  _CategoryWidgetState({this.model, this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.name),
      ),
      body: ListView.builder(
        itemCount: category.items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(category.items[index].name),
            onTap: () {
              Navigator.of(context).push(
                SlideLeftRoute(
                  page: ItemWidget(model: model, item: category.items[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

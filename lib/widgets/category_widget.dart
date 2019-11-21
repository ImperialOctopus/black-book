import 'package:black_book/model/category.dart';
import 'package:black_book/model/item.dart';
import 'package:black_book/model/model.dart';
import 'package:black_book/routes/slide_left_route.dart';
import 'package:black_book/widgets/progress_icon_widget.dart';
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
          Item _item = category.items[index];
          List<int> _progress = model.getProgress(_item);
          return ListTile(
            title: Text(_item.name),
            trailing: Row(children: <Widget>[
              ProgressIconWidget.fromInt(_progress[0]),
              
            ],),
            onLongPress: () {
              Navigator.of(context).push(
                SlideLeftRoute(
                  page: ItemWidget(model: model, item: _item),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../data/category_data.dart';
import '../../model/category.dart';
import '../../model/model.dart';
import 'checklist_category_screen.dart';

class ChecklistScreen extends StatelessWidget {
  final Model model;
  final List<Category> categories = CategoryData.categoryList;

  ChecklistScreen({this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clinical Checklist'),
      ),
      body: ListView.separated(
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(categories[index].name),
            leading: categories[index].icon,
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.of(context).push(
                EnterExitRoute(
                  enterPage: ChecklistCategoryScreen(
                      model: model, category: categories[index]),
                  exitPage: this,
                ),
              );
            },
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
      ),
    );
  }
}
